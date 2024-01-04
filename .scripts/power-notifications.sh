#!/bin/sh

old="$(acpi -b | awk '{split($0,a,","); split(a[2],b," "); split(b[1],c,"%"); print c[1]}')"

while sleep 10; do
  new="$(acpi -b | awk '{split($0,a,","); split(a[2],b," "); split(b[1],c,"%"); print c[1]}')"
  if [ "$new" != "$old" ]; then
    if [ "$new" -lt 10 ]; then
      notify-send -u critical -a "Power Manager" "Battery less than 10%"
    fi
  fi
  old="$new"
done
