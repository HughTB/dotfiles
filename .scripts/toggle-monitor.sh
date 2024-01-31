#!/bin/sh

if $(hyprctl monitors | grep -q eDP-1)
then
  echo "turning internal screen off";
  hyprctl keyword monitor "eDP-1,disable"
else
  echo "turning internal screen on"
  hyprctl keyword monitor "eDP-1,preferred,auto,1"
fi
