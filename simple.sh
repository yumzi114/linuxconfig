#!/bin/sh
git clone https://github.com/wildan-pratama/wildan-hyprland.git
cd wildan-hyprland
./install.sh
yay -Syy thunar thunar-archive-pluginfile-roller mpv geany viewnior mpc mpd ncmpcpp
sudo cp -r usr /
sudo cp -r etc /
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .gtkrc-2.0 ~/
cd ..
sudo cp hyprland.conf ~/.config/hypr/
sudo cp windows-rule.conf ~/.config/hypr/
#yay -Sy gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info 
#sudo pacman -S xf86-video-intel
#yay -Sy neofech xdg-desktop-portal-hyprland chromium fzf
yay -Rs xdg-desktop-portal-gnome
sudo pacman -S terminus-font noto-fonts-cjk ttf-dejavu tldr ibus ibus-hangul
sudo cp local.conf /etc/fonts/
cd ~/
sudo systemctl enable fstrim.timer
#git clone --recursive https://github.com/hyprwm/Hyprland
#cd Hyprland
#sudo make install
#cd ..




