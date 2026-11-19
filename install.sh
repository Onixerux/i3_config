#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$SCRIPT_DIR/dotfiles"

# i3
mkdir -p ~/.config/i3
cp "$SRC/i3/config" ~/.config/i3/config
cp "$SRC/i3/setup-layout.sh" ~/.config/i3/setup-layout.sh
chmod 700 ~/.config/i3/setup-layout.sh

# Polybar
mkdir -p ~/.config/polybar
cp "$SRC/polybar/config" ~/.config/polybar/config
cp "$SRC/polybar/launch.sh" ~/.config/polybar/launch.sh
cp "$SRC/polybar/bluetooth-status" ~/.config/polybar/bluetooth-status
chmod 700 ~/.config/polybar/launch.sh
chmod 700 ~/.config/polybar/bluetooth-status

if command -v i3-msg &>/dev/null && i3-msg &>/dev/null; then
    i3-msg restart
    echo "✓ i3 neu gestartet"
else
    echo "✓ Configs installiert (i3 läuft nicht, starte es manuell)"
fi