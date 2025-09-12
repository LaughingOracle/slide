#!/bin/bash
mkdir -p output
for img in *; do
    [ -f "$img" ] || continue
    base="${img%.*}"          # remove extension
    id="${base%%_*}"          # take part before '_'
    ffmpeg -y -i "$img" -vf "scale=1080:1920" "output/${id}.png"
done
