#!/bin/bash
set -e

## install reflector
#sudo pacman -S --noconfirm --needed reflector

## find fastest server
#sudo reflector -l 100 --score 30 --sort rate --threads 20 --verbose -x osbeck -x tomforb --save /tmp/mirrorlist
#rankmirrors -n -v /tmp/mirrorlist
#sudo cp /tmp/mirrorlist /etc/pacman.d/mirrorlist
sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist

## print
cat /etc/pacman.d/mirrorlist

## update
sudo pacman -Syyu --noconfirm
