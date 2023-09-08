#!/bin/sh

NOTIF_FILE=/home/hugh/.scripts/notif-brightness-id

brillo -A 10

if test -f $NOTIF_FILE && [[ "$(cat $NOTIF_FILE)" =~ ^[0-9]+$ ]]; then
  notify-send -r $(cat $NOTIF_FILE) -p -e --app-name "Brightness" "$(brillo -G)%" -h int:value:$(brillo -G) > $NOTIF_FILE
else
  notify-send -p -e --app-name "Brightness" "$(brillo -G)%" -h int:value:$(brillo -G) > $NOTIF_FILE
fi
