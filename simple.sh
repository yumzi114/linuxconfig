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
cd ..
git clone https://github.com/wildan-pratama/wildan-hyprland.git
cd wildan-hyprland

./install.sh
cd ..
sudo cp hyprland.conf ~/.config/hypr/
sudo cp windows-rule.conf ~/.config/hypr/
