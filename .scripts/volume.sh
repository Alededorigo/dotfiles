#!/bin/bash

if [[ "$1" == "-u" ]]; then
    killall dunst
    dunst &
    amixer set Master 5%+
    notify-send -i ~/.icons/noti/volu.png "$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master))"
elif [[ "$1" == "-d" ]]; then
    killall dunst
    dunst &
    amixer set Master 5%-
    notify-send -i ~/.icons/noti/vold.png "$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master))"
fi
