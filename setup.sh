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
sudo pacman -S polybar --noconfirm
sudo pacman -S feh --noconfirm
sudo pacman -S terminator --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S lxappearance --noconfirm
sudo pacman -S material-gtk-theme --noconfirm
sudo pacman -S papirus-icon-theme --noconfirm
sudo pacman -S arc-gtk-theme --noconfirm
sudo pacman -S arc-icon-theme --noconfirm
sudo pacman -S rofi --noconfirm
sudo pacman -S picom --noconfirm
sudo pacman -S i3lock --noconfirm
sudo pacman -S xrandr --noconfirm
sudo pacman -S playerctl --noconfirm

# download and load scripts
cd ~
sudo rm -R ~/.config/i3
sudo rm -R ~/.config/polybar
sudo rm -R ~/.config/scripts
sudo rm -R ~/.config/gtk-3.0
sudo rm -R ~/.config/rofi
sudo rm -R ~/.config/picom
sudo rm -R ~/.config/terminator
sudo cp -R $BASEDIR/arch-script/* ~/.config 
