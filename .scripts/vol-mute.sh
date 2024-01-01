#!/bin/sh

NOTIF_FILE=/home/hugh/.scripts/notif-vol-id

pamixer --toggle-mute

if test -f $NOTIF_FILE && [[ "$(cat $NOTIF_FILE)" =~ ^[0-9]+$ ]]; then
  notify-send -r $(cat $NOTIF_FILE) -p -e --app-name "Volume" "$(pamixer --get-volume-human)" -h int:value:$(pamixer --get-volume) > $NOTIF_FILE
else
  notify-send -p -e --app-name "Volume" "$(pamixer --get-volume-human)" -h int:value:$(pamixer --get-volume) > $NOTIF_FILE
fi
