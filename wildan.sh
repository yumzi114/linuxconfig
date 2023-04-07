
#!/bin/sh
cd wildan-hyprland
sudo cp -r usr /
sudo cp -r etc /
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .gtkrc-2.0 ~/
yay -Syy sddm-git polkit hyprland-git waybar-hyprland-git alacritty rofi-lbonn-wayland-git \
swayidle  swaybg swaylock-effects-git wl-clipboard mailcap networkmanager-dmenu-git wf-recorder \
bc gtk-engine-murrine xfce-polkit dunst nwg-look xdg-desktop-portal-hyprland-git qt5-svg \
inetutils pamixer bluez-utils xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects hyprland-scratchpad-git \
qt5-quickcontrols2 brightnessctl noto-fonts-main pipewire wireplumber grim slurp jq dunst \
qt5-wayland qt6-wayland pastel networkmanager network-manager-applet noto-fonts-emoji wdisplays swww
