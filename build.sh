#!/bin/bash

fixmyjs static/js/*
hugo --cleanDestinationDir --gc --minify -b "https://theden.github.io/thoughts.theden.sh/"

echo "Minifying everything we can"
find ./public/ -type f \( \
  -name "*.html" \
  -o -name '*.js' \
  -o -name '*.css' \
  -o -name '*.svg' \
  -o -name "*.xml" \
  -o -name "*.json" \
  -o -name "*.htm" \
  \) \
  -and ! -name "*.min*" -print0 |
  xargs -0 -n1 -P4 -I '{}' sh -c 'minify -o "{}" "{}"'

cp CNAME public/
