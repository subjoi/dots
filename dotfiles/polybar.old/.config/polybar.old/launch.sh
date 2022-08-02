killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#polybar -c $BARDIR/primary.ini primary &
#polybar -c $BARDIR/secondary.ini secondary &

polybar primary -c ~/.config/polybar.old/config.ini &
polybar secondary -c ~/.config/polybar.old/config.ini &
