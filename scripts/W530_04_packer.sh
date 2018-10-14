#!/bin/bash
set -e

## do it in a temporary directory
mkdir packer-tmp && cd packer-tmp

## install needed packages
sudo pacman -S --noconfirm --needed base-devel fakeroot jshon expac wget

## get the PKGBUILD for Packer
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer

## rename the downloaded file
mv PKGBUILD\?h\=packer PKGBUILD

## make the package
makepkg

## install it with pacman
sudo pacman --noconfirm -U packer-*.pkg.tar.xz

## cleanup
cd ..
sudo rm -dR packer-tmp
