#!/bin/sh

NOTIF_FILE=/home/hugh/.scripts/notif-media

playerctl play-pause

sleep 1

if test -f $NOTIF_FILE && [[ "$(cat $NOTIF_FILE)" =~ ^[0-9]+$ ]]; then
  notify-send -r $(cat $NOTIF_FILE) -p -e --app-name "$(playerctl status)" "$(playerctl metadata --format '{{artist}}')" "$(playerctl metadata --format '{{title}}')" -i "$(playerctl metadata --format '{{mpris:artUrl}}' | sed 's@file://@@g')" > $NOTIF_FILE
else
  notify-send -p -e --app-name "$(playerctl status)" "$(playerctl metadata --format '{{artist}}')" "$(playerctl metadata --format '{{title}}')" -i "$(playerctl metadata --format '{{mpris:artUrl}}' | sed 's@file://@@g')" > $NOTIF_FILE
fi
