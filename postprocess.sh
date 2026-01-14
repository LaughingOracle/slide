#!/bin/bash

# put this shit on vps home folder and make it executable
#  


GID="$1"

DOWNLOAD_DIR="/home/user/downloads"
TARGET_DIR="/home/user/posters"
TMP_DIR="/tmp/poster_$GID"

mkdir -p "$TMP_DIR"

# Find the completed file by GID
FILE=$(aria2c --show-files=false --gid="$GID" 2>/dev/null \
  | grep "Path:" | awk '{print $2}')

# Fallback: just scan downloads
FILE=$(ls -t "$DOWNLOAD_DIR"/*.zip 2>/dev/null | head -n 1)

[ -f "$FILE" ] || exit 0

# Extract ZIP
unzip -qq "$FILE" -d "$TMP_DIR"

# Flatten and process images
i=1
find "$TMP_DIR" -type f \( \
  -iname "*.jpg" -o \
  -iname "*.jpeg" -o \
  -iname "*.png" \
\) | sort | while read img; do
    ext="${img##*.}"
    printf -v num "%d" "$i"
    cp "$img" "$TARGET_DIR/$num.$ext"
    i=$((i+1))
done

# Cleanup
rm -rf "$TMP_DIR"
rm -f "$FILE"

exit 0
