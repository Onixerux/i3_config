#!/bin/bash
# Layout: links fastfetch, rechts oben + rechts unten je ein Terminal
i3-msg "workspace number 1" >/dev/null

alacritty --hold -e fastfetch &
sleep 1

i3-msg "split horizontal" >/dev/null
alacritty &
sleep 1

i3-msg "split vertical" >/dev/null
alacritty &
