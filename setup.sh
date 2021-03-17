#!/bin/bash

# COLORS
red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
GREEN_BOLD="\e[1;32m${expand_bg}"
GREEN="\e[0;92m"
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
    echo -e "$GREEN==> Creating cache directory for the repository$reset"
    mkdir $HOME/dotfiles_cache
    echo -e ""
    git clone https://github.com/alededorigo/dotfiles.git $HOME/dotfiles_cache/dotfiles
}

# clone

echo -e "Choose your distribution"
echo -e "$blue[${white}1$blue]$reset - Arch (Make sure Yay is your AUR helper)"
echo -e "$blue[${white}2$blue]$reset - Debian/Ubuntu"
echo -e "$blue[${white}3$blue]$reset - Fedora/CentOS"
printf "\nYour answer > "
read -r OS
echo -e "\n"

case $OS in
    "1")
        echo -e ""
        echo -e "$GREEN==> Installing dependencies$reset\n"
        sudo pacman -S rofi dmenu i3status kitty herbstluftwm xmonad xmonad-contrib i3blocks dunst rxvt-unicode qutebrowser vim neovim emacs nitrogen moc firefox zsh git htop mpv pcmanfm slock thunar zathura zathura-pdf-poppler
        echo -e ""
        echo -e "$GREEN==>  Installing fonts$reset\n"
        sudo pacman -S ttf-fira-code ttf-ibm-plex adobe-source-code-pro-fonts
        echo -e ""
        echo -e "$GREEN==> Installing AUR packages$reset\n"
        yay -S polybar picom i3-gaps-rounded-git
        echo -e ""
        echo -e "$GREEN_BOLD==> Done$reset"
    ;;

    "2")
        echo -e ""
        echo -e "$GREEN==> Updating system$reset\n"
        sudo apt-get update
        echo -e ""
        echo -e "$GREEN==> Installing dependencies$reset\n"
        sudo apt install i3 rofi dmenu i3status kitty herbstluftwm xmonad xmonad-contrib i3blocks dunst rxvt-unicode qutebrowser vim neovim emacs nitrogen moc firefox zsh git htop mpv pcmanfm slock thunar zathura
        echo -e ""
        echo -e "$GREEN==> Installing picom$reset\n"
        sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev

        git clone https://github.com/yshui/picom $HOME/dotfiles_cache/picom && cd $HOME/dotfiles_cache/picom
        git submodule update --init --recursive
        meson --buildtype=release . build
        ninja -C build

        echo -e ""
        echo -e "$GREEN==> Installing bspwm$reset\n"
        sudo apt install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev

        cd $HOME/dotfiles_cache/
        git clone https://github.com/baskerville/bspwm.git $HOME/dotfiles_cache/bspwm
        git clone https://github.com/baskerville/sxhkd.git $HOME/dotfiles_cache/sxhkd
        cd bspwm && make && sudo make install
        cd ../sxhkd && make && sudo make install

        echo -e "$GREEN_BOLD==> Done$reset"
    ;;

    "3")
        echo -e ""
        echo -e "$GREEN==> Installing dependencies$reset\n"
        sudo dnf install i3 rofi dmenu kitty herbstluftwm spectrwm xmonad xmobar i3blocks dunst xterm qutebrowser bspwm vim neovim emacs
        echo -e ""
        echo -e "$GREEN_BOLD==> Done$reset"
    ;;

    *)
        echo -e "${red}Please answer with a valid number. Abort."
        exit
esac

clone

copy() {
    echo -e ""
    echo -e "$GREEN==> Entering in the repo$reset"
    cd $HOME/dotfiles_cache/dotfiles
    echo -e "cd $HOME/dotfiles_cache/dotfiles"
    echo -e ""
    echo -e "Choose your WM: "
    echo -e "$blue(1) - i3"
    echo -e "$red(2) - Xmonad"
    echo -e "$GREEN(3) - Bspwm"
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
            echo -e "$GREEN==> Bspwm$reset"
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
        ;;

        *)
            echo -e "${red}Please answer with a valid number. Abort."
            exit

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
}

copy

optional() {
    echo -e ""
    echo -e "$GREEN==> Would you like to install a panel?"
    echo -e "$blue(1) - Polybar"
    echo -e "$red(2) - Lemonbar"
    echo -e "$yellow(3) - i3blocks"
    echo -e "$reset(0) - no"

    printf "\nYour answer > "
    read -r BAR

    case $BAR in
        "1")
            echo -e "$blue==> Polybar$reset"
            cp -r $HOME/dotfiles_cache/dotfiles/.config/polybar/ $HOME/.config/
            echo -e "cp -r $HOME/dotfiles_cache/dotfiles/.config/polybar/ $HOME/.config/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "2")
            echo -e "$red==> Lemonbar$reseit"
            cp -r $HOME/dotfiles_cache/dotfiles/.lemonbar/ $HOME/
            echo -e "cp -r $HOME/dotfiles_cache/dotfiles/.lemonbar/ $HOME/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "3")
            echo -e "$yellow==> i3blocks$reset"
            cp -r $HOME/dotfiles_cache/dotfiles/.config/i3blocks/ $HOME/.config/
            echo -e "cp -r $HOME/dotfiles_cache/dotfiles/.config/i3blocks $HOME/.config/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "0")
            echo "Ok"
        ;;

        *)
            echo -e "${red}Please answer with a valid number. Abort."
            exit
    esac

    echo -e ""
    echo -e "$GREEN==> Would you like to install the GTK theme?"
    echo -e "$GREEN(1) - Yes"
    echo -e "$red(2) - No$reset"

    printf "\nYour answer > "
    read -r GTK

    case $GTK in
        "1")
            echo -e "$green==> Copying all files..."
            cp -r $HOME/dotfiles_cache/dotfiles/.themes/oomox-ad/ $HOME/.themes/
            echo -e "cp -r $HOME/dotfiles_cache/dotfiles/.themes/oomox-ad/ $HOME/.themes/"
            cp -r $HOME/dotfiles_cache/dotfiles/.icons/oomox-ad/ $HOME/.icons/
            echo -e "cp -r $HOME/dotfiles_cache/dotfiles/.icons/oomox-ad/ $HOME/.icons/"
            echo -e "$GREEN_BOLD==> Done$reset"
        ;;

        "2")
            echo -e "Ok"
        ;;

        *)
            echo -e "${red}Please answer with a valid number. Abort."
            exit
    esac
}

optional

echo "${green}===> TIPS <===$reset"
echo "1 - Install st (https://st.suckless.org/)"
echo "2 - Read your WM wiki"

echo -e "$GREEN_BOLD===> ALL SET! <===$reset"

rm -rf $HOME/dotfiles_cache/
cd -
