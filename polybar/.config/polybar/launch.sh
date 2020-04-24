#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch dctxmei
DISPLAY1="$(xrandr | grep 'HDMI' | cut -d ' ' -f1)"
DISPLAY2="$(xrandr | grep 'eDP' | cut -d ' ' -f1)"
for display in dctxmei-top dctxmei-bottom; do
    [ ! -z "$DISPLAY1" ] && MONITOR="$DISPLAY1" polybar "$display" &
    [ ! -z "$DISPLAY2" ] && MONITOR="$DISPLAY2" polybar "$display" &
done

echo "Bars launched..."
