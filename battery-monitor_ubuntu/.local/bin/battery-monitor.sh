#!/bin/bash

# Define the battery path
BATTERY="/sys/class/power_supply/BAT0"

# Keep track of whether we've already sent the notification for this cycle
NOTIFIED=0

while true; do
    # Read current status and capacity
    STATUS=$(cat "$BATTERY/status")
    CAPACITY=$(cat "$BATTERY/capacity")

    if [ "$STATUS" = "Charging" ] && [ "$CAPACITY" -ge 90 ]; then
        if [ "$NOTIFIED" -eq 0 ]; then
            # Send the desktop notification
            notify-send "Battery Limit Reached" "Battery is at ${CAPACITY}%. Unplug to preserve battery life." --icon=battery-full --urgency=critical

            # Play system alert sound
            pw-play /usr/share/sounds/freedesktop/stereo/message-new-instant.oga

            NOTIFIED=1
        fi
    elif [ "$STATUS" = "Discharging" ]; then
        # Reset the flag once you unplug it so it can notify you again next time
        NOTIFIED=0
    fi

    # Check every 60 seconds
    sleep 60
done
