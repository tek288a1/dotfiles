#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed git wget curl
sudo pacman -S --noconfirm --needed emacs vim
sudo pacman -S --noconfirm --needed rxvt-unicode rxvt-unicode-terminfo
sudo pacman -S --noconfirm --needed chromium
#sudo pacman -S --noconfirm --needed dmenu 
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed tmux screen
sudo pacman -S --noconfirm --needed aspell-en
sudo pacman -S --noconfirm --needed htop glances tree
sudo pacman -S --noconfirm --needed screenfetch archey3
sudo pacman -S --noconfirm --needed unzip 
