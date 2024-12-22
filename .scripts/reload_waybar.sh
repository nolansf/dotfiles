#!/usr/bin/bash
killall -q waybar

waybar -l info -c ~/.config/waybar/config.jsonc -s ~/.confgi/waybar/style.css & disown