if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec /home/hugh/.local/bin/hypr
fi
