#!/bin/bash
set -e
yaourt -S --noconfirm --noedit insync
yaourt -S --noconfirm --noedit dropbox
yaourt -S --noconfirm --noedit mailspring
yaourt -S --noconfirm --noedit laptop-mode-tools
sudo pacman -S --noconfirm --needed ibus ibus-qt ibus-hangul # for korean input
