#!/bin/bash

if [[ "$1" == "-u" ]]; then
    killall dunst
    dunst &
    pactl set-sink-volume @DEFAULT_SINK@ +10%
    notify-send "    ~" "Vol ~ $(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)) \n    ~"
elif [[ "$1" == "-d" ]]; then
    killall dunst
    dunst &
    pactl set-sink-volume @DEFAULT_SINK@ -10%
    notify-send "    ~" "Vol ~ $(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)) \n    ~"
fi
