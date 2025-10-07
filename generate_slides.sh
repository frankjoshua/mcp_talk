#!/bin/bash
# Script to generate slides from slides_v2.md using Marp and theme.css
# Usage: ./generate_slides.sh

set -e

INPUT_MD="slides_v2.md"
THEME_CSS="theme.css"
OUTPUT_HTML="slides_v2.html"

# Check if Marp CLI is installed
if ! command -v marp &> /dev/null; then
    echo "Error: Marp CLI is not installed. Install with: npm install -g @marp-team/marp-cli"
    exit 1
fi

# Generate slides
marp "$INPUT_MD" --theme "$THEME_CSS" -o "$OUTPUT_HTML" --allow-local-files --html
echo "Slides generated: $OUTPUT_HTML"