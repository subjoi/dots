#!/bin/bash


pid=$(pidof $1)
proc=$(ps -p $pid -o comm=) 

# if prvevious signal 0
if [[ $? < 1 ]]; then
  echo "Current process: $pid"
  echo "Proc: $proc"
  echo -e "Restart $proc? [y/n]"
  read ans
  if [[ $ans == y ]]; then
    notify-send "$proc" "$pid"
  else echo "Nothing to see"
  fi
else echo "Nada"
fi












#if [[ "$?" == 0 ]]; then
#  echo -e "Simple bash program to resart proc by id.\n"
#  echo -e "."
#  echo \n
#  echo ".2"
#  echo " Found a pid!"
#else
#  echo "Found no pid!"
#fi  
