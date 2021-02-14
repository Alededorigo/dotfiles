#!/bin/bash

# COLORS
red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
GREEN_BOLD="\e[1;32m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
yellow="\e[0;33m"
uline="\e[4m"
reset="\e[0m"

clear

echo -e "\n"
echo -e "$red __   _ ___  ___  _  _    ___  __ "
echo -e "|  \ / \_ _|| __|| || |  | __|/ _|"
echo -e "| o | o ) | | _| | || |_ | _| \_ \\"
echo -e "|__/ \_/|_| |_|  |_||___||___||__/"
echo -e "\n$reset"

clone() {
    echo -e ""
    echo -e "$green==> Creating cache directory for the repository$reset"
    mkdir $HOME/dotfiles_cache
    echo -e ""
    git clone https://github.com/alededorigo/dotfiles.git $HOME/dotfiles_cache/dotfiles
}

# clone

echo -e "Choose your distribution"
echo -e "$blue(1) - Arch (Make sure Yay is your AUR helper)"
echo -e "$red(2) - Debian/Ubuntu"
echo -e "$green(3) - Fedora/CentOS$reset"
printf "\nYour answer > "
read -r OS
echo -e "\n"

case $OS in
    "1")
        echo -e ""
        echo -e "$green==> Installing dependencies$reset\n"
        sudo pacman -S i3-gaps rofi dmenu i3status kitty herbstluftwm spectrwm xmonad xmonad-contrib xmobar i3blocks lemonbar dunst xterm qutebrowser bspwm vim neovim emacs
        echo -e ""
        echo -e "$green==>  Installing fonts$reset\n"
        sudo pacman -S ttf-fira-code ttf-ibm-plex adobe-source-code-pro-fonts
        echo -e ""
        echo -e "$green==> Installing AUR packages$reset\n"
        yay -S polybar picom
        echo -e ""
        echo -e "$GREEN_BOLD==> Done$reset"
    ;;

    "2")
        echo -e ""
        echo -e "$green==> Adding speed ricer repository$reset\n"
        sudo add-apt-repository ppa:kgilmer/speed-ricer
        echo -e ""
        echo -e "$green==> Updating system$reset\n"
        sudo apt-get update
        echo -e ""
        echo -e "$green==> Installing dependencies$reset\n"
        sudo apt install i3-gaps rofi dmenu i3status kitty herbstluftwm spectrwm xmonad xmobar i3blocks lemonbar dunst xterm qutebrowser vim neovim emacs
        echo -e ""
        echo -e "$green==> Installing picom$reset\n"
        sudo apt install picom
        echo -e ""
        echo -e "$GREEN_BOLD==> Done$reset"
    ;;

    "3")
        echo -e ""
        echo -e "$greenInstalling dependencies$reset\n"
        sudo dnf install i3-gaps rofi dmenu i3status kitty herbstluftwm spectrwm xmonad xmobar i3blocks lemonbar dunst xterm qutebrowser bspwm vim neovim emacs
        echo -e ""
        echo -e "$GREEN_BOLD==> Done$reset"
    ;;
esac

clone

copy() {
    echo -e ""
    echo -e "$green==> Entering in the repo$reset"
    cd $HOME/dotfiles_cache/dotfiles
    echo -e "cd $HOME/dotfiles_cache/dotfiles"
    echo -e ""
    echo -e "Choose your WM: "
    echo -e "$blue(1) - i3"
    echo -e "$red(2) - Xmonad"
    echo -e "$green(3) - Bspwm"
    echo -e "$yellow(4) - Herbstluftwm$reset"

    printf "\nYour answer > "
    read -r WM
    echo -e "\n"

    case $WM in
        "1")
            echo -e "$blue==> i3wm$reset"
            cp -r $HOME/dotfiles_cache/dotfiles/.config/i3/ $HOME/.config/
            echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.config/i3/ $HOME/.config/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "2")
            echo -e "$red==> Xmonad$reset"
            cp -r $HOME/dotfiles_cache/dotfiles/.xmonad/ $HOME/
            echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.xmonad/ $HOME/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "3")
            echo -e "$green==> Bspwm$reset"
            cp -r $HOME/dotfiles_cache/dotfiles/.config/bspwm/ $HOME/.config/
            echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.config/bspwm/ $HOME/.config/"
            echo -e "Sxhkd for keybindings"
            cp -r $HOME/dotfiles_cache/dotfiles/.config/sxhkd/ $HOME/.config/
            echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.config/sxhkd/ $HOME/.config/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "4")
            echo -e "$yellow==> Herbstluftwm$reset"
            cp -r $HOME/dotfiles_cache/dotfiles/.config/herbstluftwm/ $HOME/.config/
            echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.config/herbstluftwm/ $HOME/.config/"
            echo -e "$GREEN_BOLD==> Done$reset"
    esac

    echo -e ""
    echo -e "$red==> Rofi (App launcher)$reset"
    cp -r $HOME/dotfiles_cache/dotfiles/.config/rofi/ $HOME/.config/
    echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.config/rofi/ $HOME/.config/"
    echo -e "$GREEN_BOLD==> Done$reset"

    echo -e ""
    echo -e "$red==> Scripts$reset"
    cp -r $HOME/dotfiles_cache/dotfiles/.scripts/ $HOME/
    echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.scripts/ $HOME/"
    echo -e "$GREEN_BOLD==> Done$reset"

    echo -e ""
    echo -e "$red==> Dunst$reset"
    cp -r $HOME/dotfiles_cache/dotfiles/.config/dunst/ $HOME/.config/
    echo -e "> cp -r $HOME/dotfiles_cache/dotfiles/.config/dunst/ $HOME/.config/"
    echo -e "$GREEN_BOLD==> Done$reset"

    echo -e ""
    echo -e "$GREEN_BOLD===> ALL SET! <===$reset"
}

copy
