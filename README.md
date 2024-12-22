# Dotfile

A curated collection of configuration files and scripts for a personalized and aesthetically pleasing Arch Linux rice, optimized for Hyprland and Wayland environments.

insert img here of rice

---

## Customization

### Wallpaper Management

- Waypaper: Easily change wallpapers via the waypaper CLI, GUI or `wallpaper` alias
- Pywal: Automatically generate a color scheme based on your wallpaper


### Bar & Widgets

- Waybar: Customize modules, fonts, and icons in .config/waybar/config
- Swaync: Configure notifications for seamless integration

### Theming

- Pywalfox: Sync browser themes with your rice
- BetterDiscord: Apply custom themes for Discord

---

## Dependencies

### Essential Packages

**Pacman**
```bash
sudo pacman -S bluez bluz-utils btop cliphist wl-paste netowrkmanager network-manager-applet playerctl pavucontrol pywal sawync swww waybar waypaper rofi wofi vim
```

**AUR Helpers**
Install using either `paru` or `yay`:
``` bash
paru -S wlogout waypaper visual-studio-code-bin boo-sddm-git sddm-git swaync oh-my-zsh blueman swww-git pavucontrol-git pywal-git pywal-discord-git pywalfox hyprland-qtutils discord betterdiscord spotify cbonsai
```

``` bash
yay -S wlogout waypaper visual-studio-code-bin boo-sddm-git sddm-git swaync oh-my-zsh blueman swww-git pavucontrol-git pywal-git pywal-discord-git pywalfox hyprland-qtutils discord betterdiscord spotify cbonsai
```

---


## Installing

Clone the repository and copy files to their respective locations:

``` bash
cd ~/Downloads
git clone https://github.com/nolansf/dotfiles
cd dotfiles
cp -r .config .icons .scripts .wallpapers install.sh ~/
cd ~ && rm -r dotfiles
chmod -R +x ~/.scripts/
chmod +x ~/.config/hypr/autostart
chmod -R +x ~/.config/wlogout/
chmod +x ~/install.sh
~/install.sh
```

---

## Inspirations

The following projects have inspired me:

- https://github.com/JaKooLit/Hyprland-Dots
- https://github.com/prasanthrangan/hyprdots
- https://github.com/yurihikari/garuda-hyprdots
- https://github.com/mylinuxforwork/dotfiles
- https://github.com/PROxZIMA/.dotfiles
- https://github.com/harsh-m-patil/.dotfiles


## To Do list

1. add spicetify with working themeing
2. themeing with vscode