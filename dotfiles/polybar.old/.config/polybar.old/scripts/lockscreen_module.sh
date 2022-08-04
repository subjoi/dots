#!/bin/bash

if pidof xautolock > /dev/null
then
  #On
  printf "Lockscreen On"
else
  #Off
  printf "Lockscreen Off"
fi
