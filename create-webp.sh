#!/bin/bash
# Script to create webp versions of images. WebP will be created in the
# same location and with the smae filename but with the .webp extension
# Requires cwebp https://developers.google.com/speed/webp/download

set -eo pipefail

webp_cli="cwebp"
if ! command -v "${webp_cli}" &> /dev/null; then
  echo "${cwebp_cli} is not installed"
  exit
fi

webp_quality=100

while IFS= read -r -d '' file; do
  cwebp -q "${webp_quality}" "$file" -o "${file%.*}.webp" || true
done < <(find static/images/ -type f \( -name "*.png" -o -name "*.jpg" \) -print0)
