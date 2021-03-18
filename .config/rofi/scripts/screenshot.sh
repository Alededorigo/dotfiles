#!/usr/bin/env bash

rofi_command="rofi -lines 3 -theme scr"

# Options
screen=" "
area=" "
timer=" "

# Variable passed to rofi
options="$screen\n$area\n$timer"

chosen="$(echo -e "$options" | $rofi_command -dmenu -p "shot" -selected-row 1)"
case $chosen in
    $screen)
        maim ~/Pics/Shots/$(date +%d-%m-%y-%H:%M).png && notify-send -i ~/.icons/noti/wall.png "Screenshot" "Saved to ~/Pics/Shots/$(date +%d-%m-%y_%H:%M).png" && sxiv ~/Pics/Shots/$(date +%d-%m-%y-%H:%M).png
    ;;
    $area)
        maim -sqo --nodecorations=1 --color=186,137,145,255 | xclip -selection clipboard -t image/png
        notify-send -i ~/.icons/noti/wall.png "Screenshot" "Copied to clipboard"
    ;;
    $timer)
        sleep 5 && maim -sqo --nodecorations=1 --color=186,137,145,255 | xclip -selection clipboard -t image/png
        notify-send -i ~/.icons/noti/wall.png "Screenshot" "Copied to clipboard"
    ;;
esac
