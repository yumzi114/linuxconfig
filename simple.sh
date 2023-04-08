#!/bin/sh
mkdir build && cd build
git clone https://aur.archlinux.org/linux-vfio.git
cd linux-vfio
makepkg -si
cd ..
cd ..
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info chromium
sudo pacman -S xf86-video-intel fzf
yay -S neofech xdg-desktop-portal-hyprland 
cd ..
git clone https://github.com/wildan-pratama/wildan-hyprland.git
cd wildan-hyprland

./install.sh
yay -S sddm-git polkit hyprland-git waybar-hyprland-git alacritty rofi-lbonn-wayland-git \
swayidle  swaybg swaylock-effects-git wl-clipboard mailcap networkmanager-dmenu-git wf-recorder \
bc gtk-engine-murrine xfce-polkit dunst nwg-look xdg-desktop-portal-hyprland-git qt5-svg \
inetutils pamixer bluez-utils xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects hyprland-scratchpad-git \
qt5-quickcontrols2 brightnessctl pipewire wireplumber grim slurp jq dunst \
qt5-wayland qt6-wayland pastel networkmanager network-manager-applet noto-fonts-emoji wdisplays swww

yay -S thunar thunar-archive-pluginfile-roller mpv geany viewnior mpc mpd ncmpcpp chromium
sudo systemctl enable sddm.service
sudo cp -r usr /
sudo cp -r etc /
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .gtkrc-2.0 ~/
cd ..
sudo cp hyprland.conf ~/.config/hypr/
sudo cp windows-rule.conf ~/.config/hypr/

