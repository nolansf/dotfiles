#! /bin/bash

# creates discrod files and installs better discord
discord & disown


# downloads files in Downlaods directory
cd ~/Downloads/dotfiles
cp -r .config .scripts .wallpapers ~


# installing ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# installing sddm themes
# https://github.com/PROxZIMA/boo-sddm
cd ~/Downloads
git clone https://github.com/PROxZIMA/boo-sddm.git
cd boo-sddm
sudo cp -r boo /usr/share/sddm/themes
sudo touch /etc/sddm.conf
echo "[Theme]" > /etc/sddm.conf
echo "Current=boo" >> /etc/sddm.conf
rm ~/Downloads/boo-sddm

# https://framagit.org/MarianArlt/sddm-sugar-candy
mv ~/.config/sddm/sugar-candy.tar.gz ~/Downloads
sudo tar -xzvf ~/Downloads/sugar-candy.tar.gz -C /usr/share/sddm/themes
rm /usr/share/sddm/themes/theme.conf && mv ~/.config/sddm/theme.conf /usr/share/sddm/themes/theme.conf
rm -r ~/.config/sddm
echo "# Current=sugar-candy" >> /etc/sddm.conf

# enabling required services
sudo systemctl enable bluetooth.service NetworkManager.service

mv $HOME/.config/.zshrc $HOME/.zshrc

pkill discord
BetterDiscord install

reboot

notify-send "enable themes in discord to see changes"