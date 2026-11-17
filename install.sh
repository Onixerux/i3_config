#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# i3
mkdir -p ~/.config/i3
cp "$SCRIPT_DIR/i3/config" ~/.config/i3/config
cp "$SCRIPT_DIR/i3/setup-layout.sh" ~/.config/i3/setup-layout.sh
chmod 700 ~/.config/i3/setup-layout.sh

# Polybar
mkdir -p ~/.config/polybar
cp "$SCRIPT_DIR/polybar/config" ~/.config/polybar/config
cp "$SCRIPT_DIR/polybar/launch.sh" ~/.config/polybar/launch.sh
cp "$SCRIPT_DIR/polybar/bluetooth-status" ~/.config/polybar/bluetooth-status
chmod 700 ~/.config/polybar/launch.sh
chmod 700 ~/.config/polybar/bluetooth-status

if command -v i3-msg &>/dev/null && i3-msg &>/dev/null; then
    i3-msg restart
    echo "✓ i3 neu gestartet"
else
    echo "✓ Configs installiert (i3 läuft nicht, starte es manuell)"
fi   