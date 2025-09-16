##!/bin/sh
#
#chosen=$(printf "Lock\nSuspend\nReboot\nShutdown\nLog Out" | rofi -dmenu -i)
#
#case "$chosen" in
#	"Lock") lockscreen ;;
#	"Suspend") systemctl suspend-then-hibernate ;;
#	"Reboot") reboot ;;
#	"Shutdown") poweroff ;;
#	"Log Out") hyprctl dispatch exit ;;
#	*) exit 1 ;;
#esac

#!/bin/sh

if [ -z "$1" ]; then
    # No arguments: output options
    printf "Lock\nSuspend\nReboot\nShutdown\nLog Out"
else
    # Handle selected entry
    case "$1" in
        "Lock") lockscreen ;;
        "Suspend") systemctl suspend-then-hibernate ;;
        "Reboot") reboot ;;
        "Shutdown") poweroff ;;
        "Log Out") hyprctl dispatch exit ;;
        *) exit 1 ;;
    esac
fi

