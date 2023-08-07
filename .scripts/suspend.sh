#!/bin/sh

while getopts "ln" flag; do
  case $flag in
    l)
      sh /home/hugh/.scripts/lock.sh
      systemctl suspend
    ;;
    n)
      systemctl suspend
    ;;
  esac
done

#sh /home/hugh/.scripts/lock.sh
#systemctl suspend
