#!/bin/bash

NOTE=$(cat ~/.config/rofi/scripts/todos | head -n 1)

case $NOTE in
    "")
        echo "All done!"
    ;;
    *)
        echo "Todo: $NOTE"
    ;;
esac
