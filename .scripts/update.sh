#!/usr/bin/env bash

# Original script by @speltriao on GitHub
# https://github.com/speltriao/Pacman-Update-for-GNOME-Shell

# If the operating system is not Arch Linux, exit the script successfully
if [ ! -f /etc/arch-release ]; then
    exit 0
fi

# Calculate updates for each service
AUR=$(paru -Qua | wc -l)
OFFICIAL=$(checkupdates | wc -l)

# Case/switch for each service updates
case $1 in
    aur) echo " $AUR";;
    official) echo " $OFFICIAL";;
esac

# If the parameter is "update", update all services
if [ "$1" = "update" ]; then
    kitty --start-as=normal --title all_is_kitty --hold --detach sh -c 'paru -Syu'
fi

# If there aren't any parameters, return the total number of updates
if [ "$1" = "" ]; then
    # Calculate total number of updates
    COUNT=$((OFFICIAL+AUR))
    # If there are updates, the script will output the following:   Updates
    # If there are no updates, the script will output nothing.

    if [[ "$COUNT" = "0" ]]
    then
        echo ""
    else
        # This Update symbol is RTL. So &#x202d; is left-to-right override.
        echo " $COUNT"
    fi
    exit 0
fi

./launch_waybar