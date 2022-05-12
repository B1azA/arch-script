#!/bin/sh

BASEDIR=$(dirname "$0$")
echo "$BASEDIR$"

cd ~

# yay installation
sudo pacman -S git --noconfirm
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER yay-git
cd yay-git
makepkg -si --noconfirm
sudo yay -Syu --noconfirm

# install dependencies

# download and load scripts
cd ~
sudo rm -R ~/.config/i3
sudo rm -R ~/.config/polybar
sudo rm -R ~/.config/scripts
sudo rm -R ~/.config/gtk-3.0
sudo rm -R ~/.config/rofi
sudo cp -R $BASEDIR/* ~/.config 
