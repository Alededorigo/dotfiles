#!/bin/bash

LEVEL="$(brightnessctl i | grep '%' | awk -F'(' '{print $2}' | awk -F'%' '{print $1}')"

if [[ "$1" == "-u" ]]; then
    killall dunst
    dunst &
    brightnessctl s +2%
    notify-send -i ~/.icons/noti/monitor.png "${LEVEL}%"
elif [[ "$1" == "-d" ]]; then
    killall dunst
    dunst &
    brightnessctl s 2-%
    notify-send -i ~/.icons/noti/monitor.png "${LEVEL}%"
fi
