#!/bin/bash

PLAYERSTATUS=$(playerctl status)

if [[ "$PLAYERSTATUS" == "Playing" ]]; then
  playerctl play-pause && dunstify --replace=69 -I '/usr/share/icons/Arc/actions/24@2x/media-playback-pause.png' "Media:" "Paused.  "
else
  playerctl play-pause && dunstify --replace=69 -I '/usr/share/icons/Arc/actions/24@2x/media-playback-start.png' "Media:" "Playing.  "
fi
