#!/bin/bash

if pidof xautolock >/dev/null
then
  pkill xautolock && notify-send "Autolock disabled"
else
  $HOME/.config/bspwm/bin/lockscreen.sh && notify-send "Autolock enabled"
fi

