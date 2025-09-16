#!/bin/bash

uptime="`uptime -p | sed -e 's/up //g'`"

options="\n\n\n\n"
# Icons: Lock, Sleep, Logout, Reboot, Shutdown

chosen=$(echo -e "$options" | rofi -dmenu -theme ~/.config/rofi/power.rasi -p "Uptime: $uptime")

case "$chosen" in
    "") hyprlock ;;
    "") systemctl suspend ;;
    "") pkill -KILL -u "$USER" ;;
    "") systemctl reboot ;;
    "") systemctl poweroff ;;
    *) exit 0 ;;
esac

