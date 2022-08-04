#!/bin/bash

if pidof xautolock > /dev/null
then
  #On
  printf "Screenlock On"
else
  #Off
  printf "Screenlock Off"
fi
    

