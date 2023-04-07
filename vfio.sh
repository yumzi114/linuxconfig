#!/bin/bash
mkdir build && cd build
git clone https://aur.archlinux.org/linux-vfio.git
makepkg -si
