#!/bin/bash

if pidof xautolock > /dev/null
then
  pkill xautolock && \
    dunstify -r 65 -u low "Screenlock disabled"
  sleep 1
else
  lockscreen & 
  dunstify -r 65 -u low "Screenlock enabled"
fi
