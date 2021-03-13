#!/usr/bin/env bash

rofi_command="rofi -lines 3 -theme apps"

# Options
power="Power off"
reboot="Reboot"
logout="Log out"

# Variable passed to rofi
options="$power\n$reboot\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -p "力" -selected-row 0)"
case $chosen in
    $power)    
        poweroff
    ;;
    $reboot)      
        reboot
    ;;
    $logout)
        killall -u $USER
    ;;
esac
