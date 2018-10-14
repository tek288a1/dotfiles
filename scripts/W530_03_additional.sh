#!/bin/bash
set -e
sudo pacman -S --noconfirm --needed ibus ibus-qt ibus-hangul # for korean input
yaourt -S --noconfirm insync
yaourt -S --noconfirm dropbox
yaourt -S --noconfirm mailspring
yaourt -S --noconfirm albert
# yaourt -S --noconfirm laptop-mode-tools # conflict with tlp
