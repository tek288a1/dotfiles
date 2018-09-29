#!/bin/bash
# install fonts
sudo pacman -S --noconfirm powerline
sudo pacman -R --noconfirm powerline-fonts
packer -S --noconfirm --noedit powerline-fonts-git
# update cache
