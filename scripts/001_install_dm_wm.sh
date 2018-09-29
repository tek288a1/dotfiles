#!/bin/bash
set -e

## desktop manager
sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter

## window manager
sudo pacman -S --noconfirm --needed i3
sudo pacman -S --noconfirm --needed awesome vicious
sudo pacman -S --noconfirm --needed xmonad xmonad-contrib xmobar stalonetray

## autostart
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target
