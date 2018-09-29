#!/bin/bash
set -e

#packer -S --noconfirm --noedit zsh
#packer -S --noconfirm --noedit zsh-completions
#packer -S --noconfirm --noedit zsh-syntax-highlighting
packer -S --noconfirm --noedit command-not-found

wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

mv $HOME/.zshrc $HOME/.zshrc_original
cp ../zsh/.zshrc $HOME/.zshrc
