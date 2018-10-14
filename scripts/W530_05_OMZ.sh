#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed zsh
sudo pacman -S --noconfirm --needed zsh-syntax-highlighting
sudo pacman -S --noconfirm --needed command-not-found

wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

mv $HOME/.zshrc $HOME/.zshrc_original
cp ../zsh/.zshrc $HOME/.zshrc
