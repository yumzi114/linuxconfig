#!/bin/sh
read -n1 -rep 'Install default pack? (y,n)' DEFAULT
if [[ $DEFAULT == "Y" || $DEFAULT == "y" ]]; then
    sudo pacman -Sy linux-headers dkms base-devel terminus-font noto-fonts-cjk ttf-dejavu tldr ibus ibus-hangul mesa mesa-utils lib32-mesa
fi
read -n1 -rep 'Install Nvidia(this package used DKMS,Optimus for laptop)? (y,n)' NVIDIA
if [[ $NVIDIA == "Y" || $NVIDIA == "y" ]]; then
    sudo pacman -Sy nvidia-utils nvidia-dkms
    git clone https://aur.archlinux.org/optimus-manager.git &>> $NINSTLOG
    cd optimus-manager
    makepkg -si &>> ../$NINSTLOG
    cd ..
fi
read -n1 -rep 'set another(ssd,audio set)? (y,n)' ANOTHER
if [[ $ANOTHER == "Y" || $ANOTHER == "y" ]]; then
    sudo cp dsp.conf /etc/modprobe.d/
    sudo systemctl enable fstrim.timer
    sleep 3
fi
read -n1 -rep 'Install yay package manager? (y,n)' YAYP
if [[ $YAYP == "Y" || $YAYP == "y" ]]; then
    git clone https://aur.archlinux.org/yay-git.git &>> $INSTLOG
    cd yay-git
    makepkg -si --noconfirm &>> ../$INSTLOG
    cd ..
fi
read -n1 -rep 'Install Rust? (y,n)' RUST
if [[ $RUST == "Y" || $RUST == "y" ]]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
read -n1 -rep 'Install Wildan theme? (y,n)' CFG
if [[ $CFG == "Y" || $CFG == "y" ]]; then
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
    sudo cp local.conf /etc/fonts/
    cd ~/
#git clone --recursive https://github.com/hyprwm/Hyprland
#cd Hyprland
#sudo make install
#cd ..
else
    read -n1 -rep 'install Titus theme? (y,n)' TITUS
    if [[ $TITUS == "Y" || $TITUS == "y" ]]; then
    git clone https://github.com/ChrisTitusTech/hyprland-titus &>> $TITUSLOG
    cd hyprland-titus
    ./set-hyor.sh &>> ../$TITUSLOG
    fi
fi



