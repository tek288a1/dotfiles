#!/bin/sh

[ -f "$HOME/.xprofile" ] && . ~/.xprofile
xrdb $HOME/.Xresources

# Launch X by
#  > xinit
# or
#  > xinit i3
#
# To use startx
#  > startx ~/.xinitrc dwm
#

case $1 in
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
