#!/bin/bash
set -e
packer -S --noconfirm --noedit neofetch
packer -S --noconfirm --noedit insync
packer -S --noconfirm --noedit laptop-mode-tools
