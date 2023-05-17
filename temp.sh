#!/bin/sh
sudo pacman -S gtk-engine-murrine

yay -S pokemon-colorscripts-git hyprland-git hyprpicker-git xdg-desktop-portal-hyprland-git waybar-hyprland cava kitty wofi starship wl-clipboard swaync swaylock-effects-git swaylockd tty-clock-git playerctl pavucontrol btop mpd mpd-mpris mpv mpv-mpris qt5-base qt5-wayland qt6-base qt6-wayland lsd geany bat cliphist-bin gamemode polkit-gnome g4music wlogout visual-studio-code-bin boo-grub-git sddm-git boo-sddm-git proxzima-plymouth-git yad blueman network-manager-applet libinput-gestures light --needed

sudo pacman -R xdg-desktop-portal-wlr
yay -S xdg-desktop-portal-hyprland-git
yay -S system76-power obs-studio wlrobs-hg v4l2loopback-dkms v4l2loopback-utils v4l-utils waydroid binder_linux-dkms chromium-wayland-vaapi qalculate-gtk qimgv-light rlr-git uget libreoffice-fresh nemo bulky --needed
sudo pacman -S gtk-engine-murrine
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo cp -r themes/Tokyonight-Dark-BL-LB /usr/share/themes/
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo cp -r icons/Tokyonight-Moon /usr/share/icons/
cd ~/Downloads
git clone https://github.com/EliverLara/Sweet.git -b nova
cd Sweet/
sudo cp -r kde/cursors/Sweet-cursors /usr/share/icons/
cd ~/Downloads
git clone https://github.com/PROxZIMA/.dotfiles.git
cd .dotfiles
sudo cp -r .config .icons .local .mpd .ncmpcpp .scripts ~/
sudo cp .face .fonts.conf .dmrc .gtkrc-2.0 ~/
chmod -R +x ~/.scripts/
chmod +x ~/.config/hypr/autostart
chmod -R +x ~/.config/wlogout/
