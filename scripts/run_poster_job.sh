#!/usr/bin/env bash
set -Eeuo pipefail

# -------------------------
# Resolve HOME safely (PHP exec compatible)
# -------------------------
USER_HOME="$(getent passwd "$(whoami)" | cut -d: -f6)"
export HOME="$USER_HOME"

# -------------------------
# Ensure user-local bin is available
# -------------------------
export PATH="$HOME/.local/bin:$PATH"

# -------------------------
# Verify gdown exists
# -------------------------
if ! command -v gdown >/dev/null 2>&1; then
    echo "ERROR: gdown not found"
    echo "Make sure you ran: pip install --user gdown"
    echo "PATH=$PATH"
    exit 1
fi

# -------------------------
# Base directories
# -------------------------
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

BASE_DIR="$PROJECT_ROOT/storage/poster-job"
DOWNLOAD_DIR="$BASE_DIR/downloads"
TMP_DIR="$BASE_DIR/tmp"
POSTERS_DIR="$PROJECT_ROOT/storage/app/public/slides"

LOCK_FILE="$BASE_DIR/job.lock"
LOG_FILE="$BASE_DIR/job.log"
ZIP_FILE="$DOWNLOAD_DIR/posters.zip"

# -------------------------
# Cleanup function
# -------------------------
cleanup() {
    rm -f "$LOCK_FILE"
}
trap cleanup EXIT

# -------------------------
# Ensure directories exist
# -------------------------
mkdir -p "$DOWNLOAD_DIR" "$TMP_DIR" "$POSTERS_DIR"

# -------------------------
# Logging
# -------------------------
exec > >(tee -a "$LOG_FILE") 2>&1
echo "==== JOB START $(date) ===="
echo "PROJECT_ROOT=$PROJECT_ROOT"
echo "BASE_DIR=$BASE_DIR"
echo "POSTERS_DIR=$POSTERS_DIR"

# -------------------------
# Input URL
# -------------------------
RAW_URL="${1:-}"

if [[ -z "$RAW_URL" ]]; then
    echo "ERROR: No Google Drive URL provided"
    exit 1
fi

# -------------------------
# Lock mechanism
# -------------------------
if [[ -f "$LOCK_FILE" ]]; then
    echo "❌ Another job is already running. Exiting."
    exit 1
fi

echo $$ > "$LOCK_FILE"

# -------------------------
# Clean old data
# -------------------------
echo "Cleaning old data..."
rm -f "$ZIP_FILE"
rm -rf "$TMP_DIR"
rm -rf "$POSTERS_DIR"
mkdir -p "$DOWNLOAD_DIR" "$TMP_DIR" "$POSTERS_DIR"

# -------------------------
# Download using gdown
# -------------------------
if ! command -v gdown >/dev/null 2>&1; then
    echo "ERROR: gdown not installed. Install with 'pip install --user gdown'"
    exit 1
fi

echo "Starting download from Google Drive..."
gdown --fuzzy "$RAW_URL" -O "$ZIP_FILE"

if [[ ! -s "$ZIP_FILE" ]]; then
    echo "ERROR: Download failed or file is empty: $ZIP_FILE"
    exit 1
fi

# -------------------------
# Extract ZIP
# -------------------------
echo "Extracting ZIP..."
unzip -o "$ZIP_FILE" -d "$TMP_DIR"


echo "Flattening image files..."

find "$TMP_DIR" -mindepth 2 -type f \
  \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) \
  -exec mv -n {} "$TMP_DIR"/ \;

# Remove empty directories (safe)
find "$TMP_DIR" -type d -empty -delete



# -------------------------
# Convert images
# -------------------------
echo "Converting images..."
php "$SCRIPT_DIR/convert_images.php" "$TMP_DIR" "$POSTERS_DIR"

if [[ ! "$(ls -A "$POSTERS_DIR")" ]]; then
    echo "❌ No posters were created"
    exit 1
fi

echo "✅ Posters created successfully"
