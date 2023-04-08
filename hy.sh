#!/bin/sh
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info
sudo pacman -S xf86-video-intel fzf
cd ..
git clone --recursive https://github.com/hyprwm/Hyprland
git clone https://gitlab.freedesktop.org/wlroots/wlroots.git
cd Hyprland
sudo make install
cd..
git clone https://github.com/wildan-pratama/wildan-hyprland.git
chmod +x wildan.sh
./wildan.sh
