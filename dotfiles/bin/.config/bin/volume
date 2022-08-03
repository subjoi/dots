#!/bin/bash

#

VOLUME=$(pamixer --get-volume)
MUTED=$(pamixer --get-mute)

muted(){
if [[ "$MUTED" == "true" ]]; then
  return 1
fi
}

if [[ $1 == "inc" ]]; then
    pamixer --increase 2 --unmute && \
    dunstify --replace 69 \
      -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-high.svg" \
               "Volume Up:" "$VOLUME%"

elif [[ $1 == "dec" ]]; then
    pamixer --decrease 2 --unmute && \
    dunstify --replace 69 \
      -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-medium.svg" \
      "Volume Down:" "$VOLUME%"

elif [[ $1 == "mute" ]]; then
    pamixer --toggle-mute && \
      if muted; then
          dunstify --replace 69 \
            -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-muted.svg" \
            "Volume Muted" "Current volume: $VOLUME%"
      else
          dunstify --replace 69 \
            -i "/usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-high.svg" \
          "Volume Unmuted" "Current volume: $VOLUME%"
      fi
fi

#elif [[ $1 == "mute" ]]; then
#  pamixer --toggle-mute && \
#    dunstify --replace 69 -i "


