#!/usr/bin/env bash

rofi_command="rofi -lines 3"

# Options
screen=" Full screen"
area="鉶Select area"
timer=" Wait 5 seconds"

# Variable passed to rofi
options="$screen\n$area\n$timer"

chosen="$(echo -e "$options" | $rofi_command -dmenu -p "shot" -selected-row 1)"
case $chosen in
    $screen)    
        maim ~/Pics/$(date +%d_%m_%y).png
    ;;
    $area)      
        maim -sqo --nodecorations=1 --color=186,137,145,255 | xclip -selection clipboard -t image/png
    ;;
    $timer)
        sleep 5 && maim -sqo --nodecorations=1 --color=186,137,145,255 | xclip -selection clipboard -t image/png
    ;;
esac
