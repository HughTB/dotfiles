#!/bin/sh

killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar bar-one 2>&1 | tee -a /tmp/polybar-$m.log & disown
  done
else
  polybar bar-one 2>&1 | tee -a /tmp/polybar-1.log & disown
fi

echo "Polybar launched successfully..."
