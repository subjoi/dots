#!/bin/bash

xautolock -time 15 -locker '/usr/bin/betterlockscreen -l dimblur' \
  -corners --+0 -cornerdelay 10 -cornersize 20 \
  -notify 100 \
  -notifier "dunstify -u normal 'Screen is locking soon.'"
  
