#!/bin/bash
set -e

alacritty -e fastfetch &
sleep 1

i3-msg "split horizontal"
i3-msg "focus right"
alacritty &
sleep 1

i3-msg "split vertical"
i3-msg "focus bottom"
alacritty &