#!/bin/bash

if pidof xautolock >/dev/null
then
  pkill xautolock && dunstify --replace=65 "Autolock disabled"
else
  $HOME/.config/bspwm/bin/lockscreen.sh && dunstify --replace=65 "Autolock enabled"
fi

