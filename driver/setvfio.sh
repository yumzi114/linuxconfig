#!/bin/sh
if lspci -nnk | grep nvidia ; then
    echo "try set VFIO"
    sudo virsh nodedev-detach pci_0000_01_00_0
    sudo rmmod nvidia_modeset nvidia_drm nvidia
    sudo modprobe -i vfio_pci vfio_pci_core vfio_iommu_type1
    echo "Done"
else
    if lspci -nnk | grep vfio-pci ; then
    echo "used VFIO app run"
    fi
fi