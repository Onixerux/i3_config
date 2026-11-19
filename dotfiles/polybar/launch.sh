#!/bin/bash
killall -q polybar
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 0.2; done

for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR="$monitor" polybar main -c "$HOME/.config/polybar/config" 2>>"/tmp/polybar-$monitor.log" &
done
