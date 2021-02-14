#!/bin/bash

if [[ "$1" == "-u" ]]; then
    killall dunst
    dunst &
    pactl set-sink-volume @DEFAULT_SINK@ +5%
    notify-send "🔊 $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"
elif [[ "$1" == "-d" ]]; then
    killall dunst
    dunst &
    pactl set-sink-volume @DEFAULT_SINK@ -5%
    notify-send "🔉 $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"
fi
