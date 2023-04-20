#!/bin/sh
echo "try set VFIO"
sudo virsh nodedev-detach pci_0000_01_00_0
sudo rmmod nvidia_modeset nvidia_drm nvidia
sudo modprobe -i vfio_pci vfio vfio_iommu_type1
echo "Done"
