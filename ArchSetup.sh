#!/bin/bash

# Also, sostituite `linux-headers` with `linux-zen linux-zen-headers`
sudo pacman -S bc linux-headers dkms base-devel

sudo pacman -Syyu

sudo pacman -S i3-gaps rofi git vim micro ttf-roboto ttf-roboto-mono ttf-ibm-plex gnome nautilus gnome-flashback telegram-desktop gnome-tweaks

# Installing yay
mkdir ~/dots-cache && cd ~/dots-cache
git clone https://aur.archlinux.org/yay-git.git ~/dots-cache/yay && cd ~/dots-cache/yay
# Requires `base-devel`
makepkg -si

# Installing AUR packages
yay -S rtl8821ce-dkms-git polybar ttf-material-design-icons-extended ttf-iosevka
fc-cache -fv

sudo systemctl disable lightdm
sudo systemctl enable sddm

# Installing i3+Gnome integration
cd ~/dots-cache
git clone https://github.com/i3-gnome/i3-gnome ~/dots-cache/i3-gnome
cd ~/dots-cache/i3-gnome
sudo make install

# Optimizing environment
gsettings set org.gnome.gnome-flashback desktop false

# Requires ssh
cd ~/dots-cache
git clone git@github.com:Alededorigo/laptop.git ~/dots-cache/laptop-dots
cp -r ~/dots-cache/laptop-dots/* ~/.config/
# Or using GNU stow - `stow`

read -p "Done! Press ENTER to reboot..."
sudo reboot
