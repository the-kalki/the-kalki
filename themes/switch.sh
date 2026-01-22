#!/bin/bash

# Theme Switcher Script for GitHub Profile README
# Usage: ./switch.sh <theme_name>
# Available themes: terminal, glassmorphism, neobrutalism, light, bento, digital_garden

THEME=$1
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

if [ -z "$THEME" ]; then
    echo "🎨 Available themes:"
    echo "   • terminal       - Green on black, Matrix style"
    echo "   • glassmorphism  - Soft gradients, Apple style"
    echo "   • neobrutalism   - Bold colors, raw design"
    echo "   • bento          - Modular grid, productivity focus"
    echo "   • digital_garden - Organic greens, nature inspired"
    echo "   • light          - Clean white, pastel accents"
    echo ""
    echo "Usage: ./switch.sh <theme_name>"
    exit 1
fi

THEME_FILE="$SCRIPT_DIR/$THEME.md"

if [ ! -f "$THEME_FILE" ]; then
    echo "❌ Theme '$THEME' not found!"
    echo "Available themes: terminal, glassmorphism, neobrutalism, bento, digital_garden, light"
    exit 1
fi

cp "$THEME_FILE" "$ROOT_DIR/README.md"
echo "✅ Switched to '$THEME' theme!"
echo ""
echo "Next steps:"
echo "   git add README.md"
echo "   git commit -m 'Switch to $THEME theme'"
echo "   git push"
