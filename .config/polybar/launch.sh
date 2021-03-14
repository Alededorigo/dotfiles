#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

# Launch different bars
# Uncomment to get all modules in a single panel
# polybar main -c ~/.config/polybar/config.ini >>/tmp/polybar1.log 2>&1 & disown
polybar workspaces -c ~/.config/polybar/config.ini >>/tmp/polybar1.log 2>&1 & disown
polybar note -c ~/.config/polybar/config.ini >>/tmp/polybar1.log 2>&1 & disown
polybar moc -c ~/.config/polybar/config.ini >>/tmp/polybar1.log 2>&1 & disown
polybar tray -c ~/.config/polybar/config.ini >>/tmp/polybar1.log 2>&1 & disown
