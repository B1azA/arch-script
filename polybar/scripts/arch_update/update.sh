#!/bin/sh

exec terminator -e sudo pacman -Syu --noconfirm
sudo pacman -Syu --noconfirm
