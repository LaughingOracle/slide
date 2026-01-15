<?php

if ($argc < 3) {
    fwrite(STDERR, "Usage: php convert_images.php <input_dir> <output_dir>\n");
    exit(1);
}

$inputDir  = rtrim($argv[1], '/');
$outputDir = rtrim($argv[2], '/');

if (!is_dir($inputDir)) {
    fwrite(STDERR, "Input directory does not exist\n");
    exit(1);
}

@mkdir($outputDir, 0777, true);

// Get all images (recursive if needed)
$files = glob($inputDir . '/*.{jpg,jpeg,png,JPG,JPEG,PNG}', GLOB_BRACE);

sort($files);

$counter = 1;

$maxWidth  = 1080;
$maxHeight = 1920;

foreach ($files as $file) {
    $filename = basename($file); // just the file, not path

    // Extract the number before the first dash
    if (preg_match('/^(\d+)[.-]/', $filename, $matches)) {
    $num = intval($matches[1]); // remove leading zeros
    } else {
        $num = $counter; // fallback if no dash found
    }

    $width  = imagesx($img);
    $height = imagesy($img);

    // Calculate new dimensions keeping aspect ratio
    $ratio = min($maxWidth / $width, $maxHeight / $height, 1); // don't upscale
    $newWidth  = (int)($width * $ratio);
    $newHeight = (int)($height * $ratio);

    if ($ratio < 1) {
        $resized = imagecreatetruecolor($newWidth, $newHeight);
        // Preserve transparency if needed
        imagecopyresampled($resized, $img, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
        imagedestroy($img);
        $img = $resized;
    }

    $outputFile = $outputDir . '/' . $num . '.jpg';
    imagejpeg($img, $outputFile, 80); // quality 0-100
    imagedestroy($img);

    $counter++;
}

echo "Converted " . ($counter - 1) . " images.\n";
