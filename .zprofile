if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec /home/hugh/.local/bin/hypr
fi


# Added by Toolbox App
export PATH="$PATH:/home/hugh/.local/share/JetBrains/Toolbox/scripts"

