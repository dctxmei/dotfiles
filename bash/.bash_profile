if [[ $UID -ne 0 ]]; then
    if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
        doas rmmod pcspkr 2> /dev/null
        exec startx
    fi
fi
