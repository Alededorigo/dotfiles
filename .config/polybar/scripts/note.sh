#!/bin/bash

source ~/.config/VARS

case $NOTE in
    "")
        echo "All done!"
    ;;
    *)
        echo "Todo: $NOTE"
    ;;
esac
