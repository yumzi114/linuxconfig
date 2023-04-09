#!/bin/sh
mkdir build && cd build
git clone https://aur.archlinux.org/linux-vfio.git
cd linux-vfio
makepkg -si
cd ~/
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
#yay -Sy gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info 
sudo pacman -S xf86-video-intel fzf
yay -Sy neofech xdg-desktop-portal-hyprland chromium base-devel
cd ~/
#git clone --recursive https://github.com/hyprwm/Hyprland
#cd Hyprland
#sudo make install
#cd ..




