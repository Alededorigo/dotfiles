#!/usr/bin/python

import os

os.system("clear")

PATH = "/home/ale/Pics/walls"
WALLS = os.listdir(PATH)

class colors:

    class fg: 
        HEADER = '\033[95m'
        BLUE = '\033[94m'
        OKGREEN = '\033[92m'
        WARNING = '\033[93m'
        FAIL = '\033[91m'
        ENDC = '\033[0m'
        WHITE = '\033[97m'
        BOLD = '\033[1m'
        UNDERLINE = '\033[4m'

print(colors.fg.OKGREEN + "> " + colors.fg.BLUE + "Choose wall:" + colors.fg.WHITE)

n = 0

for i in WALLS:

    if n < 10:
        print(" " + colors.fg.BLUE, n, colors.fg.WHITE + "~", i)
    else:
        print(colors.fg.BLUE, n, colors.fg.WHITE + "~", i)
    
    n = n + 1

choose = input(colors.fg.OKGREEN + "> " + colors.fg.BLUE + "Wallpaper: " + colors.fg.WHITE)

IMG=int(choose)

os.system("nitrogen --set-zoom-fill --save \"/home/ale/Pics/walls/" + WALLS[IMG] + "\"")

# Notifies you about the new wallpaper
os.system("notify-send -i ~/.icons/noti/wall.png \"Wallpaper\" \"Applied: " + WALLS[IMG] + "\"")
