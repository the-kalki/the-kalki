# 🎨 README Theme Switcher

## Available Themes

| Theme | File | Preview |
|:------|:-----|:--------|
| **Terminal** | `terminal.md` | Green on black, Matrix/Hacker style |
| **Glassmorphism** | `glassmorphism.md` | Soft gradients, Apple-style frosted glass |
| **Neo-Brutalism** | `neobrutalism.md` | Bold yellow/blue, black borders, raw design |
| **Bento Grid** | `bento.md` | Modular tiles, gray/white, organized layout |
| **Digital Garden** | `digital_garden.md` | Organic greens, earthy tones, nature vibes |
| **Light** | `light.md` | Clean white backgrounds, pastel accents |

## How to Switch Themes

### Option 1: Manual Copy (Simple)
```bash
# Switch to Terminal theme
cp themes/terminal.md README.md

# Switch to Glassmorphism theme
cp themes/glassmorphism.md README.md

# Switch to Neo-Brutalism theme
cp themes/neobrutalism.md README.md

# Switch to Light theme
cp themes/light.md README.md
```

### Option 2: Use the Switch Script
```bash
# Make the script executable (first time only)
chmod +x themes/switch.sh

# Switch theme
./themes/switch.sh terminal
./themes/switch.sh glassmorphism
./themes/switch.sh neobrutalism
./themes/switch.sh light
```

### Option 3: Git Alias (One-time setup)
Add to your `.gitconfig`:
```
[alias]
    theme = "!f() { cp themes/$1.md README.md && git add README.md && git commit -m \"Switch to $1 theme\" && git push; }; f"
```

Then use:
```bash
git theme terminal
git theme neobrutalism
```

## After Switching
1. Commit the change: `git add README.md && git commit -m "Switch theme"`
2. Push to GitHub: `git push`
3. Refresh your GitHub profile to see the new theme!
