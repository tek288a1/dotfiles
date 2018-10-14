#!/bin/bash
set -e

cd $HOME
curl -L https://git.io/epre | sh
cd $HOME/.emacs.d
mkdir src
cd src
#git clone git://orgmode.org/org-mode.git # older url
git clone https://code.orgmode.org/bzg/org-mode.git # newer, 09/29/18
cd $HOME/.emacs.d/personal
cp $HOME/Git/dotfiles/emacs/myconfig.org ./
cp $HOME/Git/dotfiles/emacs/myinit.el ./
emacs &
