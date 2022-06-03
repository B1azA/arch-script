#!/bin/sh

path=$HOME/.config/polybar/scripts/keyboard_layout/save.txt
value=$(<$path)
cz="cz"

if [ "$value" = "$cz" ]; then
    setxkbmap us
    echo us > "$path"
else
    setxkbmap cz
    echo cz > "$path"
fi
