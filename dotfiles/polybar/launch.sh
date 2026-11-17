#!/bin/bash
killall -q polybar
for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR="$monitor" polybar -c ~/.config/polybar/config &
done    