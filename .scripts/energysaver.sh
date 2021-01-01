#!/usr/bin/env bash

$BATTERY_LEVEL=`cat /sys/class/power_supply/BAT0/capacity`

if [ $BATTERY_LEVEL < 50 ]
then
    pkill picom &
    notify-send "Battery level is under 50%: Disabled Picom"
fi

exit 0
