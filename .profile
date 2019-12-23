#!/bin/sh
# Profile file. Runs on login.

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH=/opt/maple2018/bin:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH
export PATH=$HOME/.bin:$PATH
export EDITOR="nvim"
export TERMINAL="st"
export TERMINFO="/usr/lib/terminfo"
export BROWSER="chromium"
export READER="zathura"
export FILE="vifm"
export BIB="$HOME/Documents/LaTeX/uni.bib"
export REFER="$HOME/Documents/referbib"
export SUDO_ASKPASS="$HOME/.local/bin/tools/dmenupass"
export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

export _JAVA_AWT_WM_NONREPARENTING=1

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty6" ] && ! pgrep -x i3 >/dev/null && exec startx

# Switch escape and caps if tty:
sudo -n loadkeys ~/.local/bin/ttymaps.kmap 2>/dev/null
