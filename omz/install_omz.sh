#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed zsh
sudo pacman -S --noconfirm --needed zsh-syntax-highlighting
sudo pacman -S --noconfirm --needed neofetch
yay -S --noconfirm --needed command-not-found
yay -S --noconfirm --needed nerd-fonts-hack

# Install Oh My Zshell
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# Download powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

mv $HOME/.zshrc $HOME/.zshrc.bak
cp ./.zshrc $HOME/.zshrc

## For proper theming, make sure to copy .Xresources file from tkconf/X11 directory.
