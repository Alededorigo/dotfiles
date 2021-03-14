#!/bin/bash

SONG=$(mocp -i | grep [Ff]ile | sed "s/[Ff]ile: \/home\/$USER\/Music\///" | sed "s/.m4a//")

case $SONG in
    "")
        echo "Nothinh playing"
    ;;
    *)
        echo $SONG
    ;;
esac
