#!/bin/bash
set -e

cd $HOME
curl -L https://git.io/epre | sh
cd $HOME/.emacs.d
git clone https://github.com/tek288a1/tk_emacs
mv tk_emacs/prelude-modules.el .
mv tk_emacs/myconfig.org personal/
mv tk_emacs/myinit.el personal/
rm -rf tk_emacs
mkdir src
cd src
git clone git://orgmode.org/org-mode.git
cd ..
emacs &
