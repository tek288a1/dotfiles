#!/bin/sh
xrandr\
    --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal\
    --output DP-1 --off\
    --output DP-1-1 --off\
    --output DP-1-2 --off\
    --output DP-2 --off\
    --output DP-2-1 --off\
    --output DP-2-2 --off\
    --output DP-3 --off
setbg && refbar && sleep 1
notify-send.sh "💻 Laptop Screen Only"
