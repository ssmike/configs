#!/bin/bash
#xhost +
compton -cCGf -D 3 -b
cdemu-daemon &
#chromium &
nitrogen --restore &
krunner &
xfce4-power-manager
~/.xmonad/dzen-auto.sh &
~/.xmonad/lightsOn.sh &
kwalletd &
nm-applet &
yakuake &
xbindkeys &
klipper &
kmail &
xautolock -locker "xlock" -time 15 &
#~/.mocpscrob/mocp-scrobbler.py --daemon &
#steam &
#syndaemon -t -i 1 -d 
