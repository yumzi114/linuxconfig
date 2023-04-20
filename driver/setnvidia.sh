#!/bin/sh
if lspci -nnk | grep vfio-pci ; then
    echo "set try NVIDIA"
    sudo virsh nodedev-reattach pci_0000_01_00_0	
    sudo rmmod vfio_pci vfio_pci_core vfio_iommu_type1
    sudo modprobe -i nvidia_modeset nvidia_drm nvidia
    echo "Done"
else
    if lspci -nnk | grep nvidia ; then
    echo "used NVIDIA app run"
    fi
fi