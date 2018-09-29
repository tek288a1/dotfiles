#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed feh nitrogen lxappearance
sudo pacman -S --noconfirm --needed arc-gtk-theme arc-icon-theme
packer -S --noconfirm --noedit variety
