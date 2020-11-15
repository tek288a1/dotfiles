#!/bin/sh
xrandr\
    --output eDP-1 --primary --mode 1920x1080 --pos 1003x1080 --rotate normal\
    --output DP-1 --mode 1920x1080 --pos 0x0 --rotate normal\
    --output DP-2 --mode 1920x1080 --pos 1920x0 --rotate normal\
    --output DP-3 --off
setbg && refbar && sleep 1
notify-send.sh "💻 Connected to 2 Monitors"
