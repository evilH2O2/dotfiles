#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/bar-workspace.ini workspace &
# polybar -c ~/.config/polybar/bar-right.ini right &
polybar -c ~/.config/polybar/bar-keyboard.ini keyboard &
polybar -c ~/.config/polybar/bar-backlight.ini backlight &

echo "Bars launched..."