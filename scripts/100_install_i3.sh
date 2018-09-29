#!/bin/bash
set -e

cp ../i3/* $HOME/.config/i3/

cd $HOME/.config/i3
mkdir scripts && mv i3exit.sh scripts/
mv config config_orig
mv config_progress config
i3-msg reload
