#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed texlive-most texlive-lang
sudo pacman -S --noconfirm --needed julia jupyter ipython sagemath
sudo pacman -S --noconfirm --needed okular evince
sudo pacman -S --noconfirm --needed gcc-fortran
packer -S --noconfirm --noedit dropbox
