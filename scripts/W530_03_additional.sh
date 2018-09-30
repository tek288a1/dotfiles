#!/bin/bash
set -e
yaourt -S --noconfirm insync
yaourt -S --noconfirm dropbox
yaourt -S --noconfirm mailspring
yaourt -S --noconfirm laptop-mode-tools
sudo pacman -S --noconfirm --needed ibus ibus-qt ibus-hangul # for korean input
