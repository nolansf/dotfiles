#!/usr/bin/bash

# Policy Authentication Agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)

# https://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open
# https://gist.github.com/PowerBall253/2dea6ddf6974ba4e5d26c3139ffb7580
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP --all &

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh


# gsettings
gsettings set org.gnome.desktop.interface gtk-theme 'Tokyonight-Dark-BL-LB'
gsettings set org.gnome.desktop.interface font-name 'SF Pro Text 9'
gsettings set org.gnome.desktop.interface icon-theme 'Tokyonight-Moon'
gsettings set org.gnome.desktop.interface cursor-theme 'Sweet-cursors'

# For nemo
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

# notification daemon
swaync &

# lock/suspend when idle
hypridle &

# waybar
~/.scripts/launch_waybar &

# music daemon
# mpd &
# g4music &

# wallpaper
swww query || swww init
swww img ~/.wallpapers/astronaut.jpg --transition-fps 60 --transition-type grow --transition-pos 0.925,0.977 --transition-duration 2 &

# effects
# $scripts/tools/rgb &

# Applets
blueman-applet &
nm-applet --indicator &\

# other
hyprctl setcursor Sweet-cursors 24
wl-paste --watch cliphist store &
notify-send -a aurora "Hello $(whoami)!" &
libinput-gestures-setup start &

# sleep 1
# mpd-mpris &
# hyprctl dispatch movetoworkspacesilent 2,com.github.neithern.g4music


# sleep 1
# killall xdg-desktop-portal-hyprland
# killall xdg-desktop-portal
# /usr/lib/xdg-desktop-portal-hyprland &
# sleep 2
# /usr/lib/xdg-desktop-portal &