#!/usr/bin/env bash

# -- COPY ALL DOTFILES IN THE DOTFILES FOLDER -- #

# -- COLORS -- #
green="\e[0;32m"
undergreen="\e[4;32m"
red="\e[0;31m"
boldwhite="\e[1;37m"
reset="\e[0m"

# -- I3 -- #
cp ~/.config/i3/config ~/dotfiles/.config/i3/config
echo "i3 ${green}done...${reset}"

# -- Polybar -- #
cp ~/.config/polybar/config ~/dotfiles/.config/polybar/config
cp ~/.config/polybar/launch.sh ~/dotfiles/.config/polybar/launch.sh
cp ~/.config/polybar/scripts/env.sh ~/dotfiles/.config/polybar/scripts/env.sh
cp ~/.config/polybar/scripts/redshift.sh ~/dotfiles/.config/polybar/scripts/redshift.sh
echo "Polybar ${green}done...${reset}"

# -- Rofi -- #
cp /usr/share/rofi/themes/AD.rasi ~/dotfiles/.config/rofi/themes/AD.rasi
echo "Rofi ${green}done...${reset}"

# -- Dunst -- #
cp ~/.config/dunst/dunstrc ~/dotfiles/.config/dunst/dunstrc
cp ~/.config/dunst/icon.png ~/dotfiles/.config/dunst/icon.png
cp ~/.config/dunst/launch.sh ~/dotfiles/.config/dunst/launch.sh
echo "Dunst ${green}done...${reset}"

# -- VSCode -- #
cp -r ~/.vscode/extensions/ad-theme.theme-ad-2.22.3 ~/dotfiles/.vscode/extensions
echo "VSCode ${green}done...${reset}"

# -- Zathura -- #
cp ~/.config/zathura/zathurarc ~/dotfiles/.config/zathura/zathurarc
echo "Zathura ${green}done...${reset}"

# -- bashrc -- #
cp ~/.bashrc ~/dotfiles/.bashrc
echo "Bash ${green}done...${reset}"

echo "${boldwhite}Adding new files...${reset}"
cd ~/dotfiles
echo "${red}"
git pull
echo "${reset}"
git add -u
echo "${boldwhite}Check git status...${reset}"
git status

echo "Enter path for new files/directories: ( ${red}q${reset} if don't needed )"
echo "${green}"
read newfile
echo "${reset}"

while [ true ]
do
    if [ $newfile == q ]; then
        break
    else
        git add $newfile
    fi
    break
done

echo "${boldwhite}Check git status...${reset}"
git status

echo "Insert commit message:"
echo "${green}"
read commit
echo "${reset}"

echo "Commit message: ${green} ${undergreen} $commit ${reset}"
git commit -m "${commit}"

git push

cd ~
