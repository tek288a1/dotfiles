#!/bin/sh

if [ $# -eq 0 ]
then
    export DESKTOP_SESSION="i3"
else
    export DESKTOP_SESSION="$1"
fi

[ -f "$HOME/.xprofile" ] && . ~/.xprofile
xrdb $HOME/.config/X11/Xresources

# Launch X by
#  > xinit
# or
#  > xinit i3
#
# To use startx
#  > startx ~/.xinitrc dwm
#

case $DESKTOP_SESSION in
	i3)
	    exec i3 ;;
	dwm)
	    exec dwm ;;
	xmonad)
	    exec xmonad ;;
        bspwm)
            exec bspwm ;;
	*)
	    exec i3 ;;
esac
