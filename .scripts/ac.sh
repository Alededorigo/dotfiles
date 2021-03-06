#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT0/status)

BAT=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $BAT -le 20 -a $STATUS = "Discharging" ]
then
    notify-send -i ~/.icons/noti/ac.png "Battery level is low! $(cat /sys/class/power_supply/BAT0/capacity)%" "Plug AC or turn off the Computer"
fi

exit 0
