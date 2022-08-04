#!/bin/bash

if pidof xautolock > /dev/null
then
  pkill xautolock && \
    dunstify -r 65 -u low "Screenlock disabled"
  sleep 1
else
  lockscreen.sh & 
  dunstify -r 65 -u low "Screenlock enabled"
fi
