#!/bin/sh

handle() {
  case $1 in monitoradded*)
    sleep 2
    eww close bar
    eww open bar
  esac
  case $1 in monitorremoved*)
    sleep 2
    eww close bar
    eww open bar
  esac
}

socat - "UNIX-CONNECT:/tmp/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock" | while read -r line; do handle "$line"; done
