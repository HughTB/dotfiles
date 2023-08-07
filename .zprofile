if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi


# Added by Toolbox App
export PATH="$PATH:/home/hugh/.local/share/JetBrains/Toolbox/scripts"

