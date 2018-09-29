#!/bin/bash
set -e
sudo pacman -S --noconfirm --needed awesome-terminal-fonts
sudo pacman -S --noconfirm --needed powerline
sudo pacman -S --noconfirm --needed adobe-source-han-sans-otc-fonts
sudo pacman -S --noconfirm --needed adobe-source-sans-pro-fonts
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family
sudo pacman -S --noconfirm --needed noto-fonts
sudo pacman -S --noconfirm --needed gnome-font-viewer
sudo pacman -S --noconfirm --needed ttf-font-awesome
sudo pacman -S --noconfirm --needed otf-font-awesome
yaourt -S --noconfirm powerline-fonts-git
#sudo pacman -R --noconfirm powerline-fonts

## update cache
fc-cache -vf