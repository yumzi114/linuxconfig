#!/bin/sh
if lspci -nnk | grep vfio-pci ; then
	echo "used VFIO Try set NVIDIA"
	sudo virsh nodedev-reattach pci_0000_01_00_0	
	sudo rmmod vfio_pci vfio_pci_core vfio_iommu_type1
	sudo modprobe -i nvidia_modeset nvidia_drm nvidia
else 
	if lspci -nnk | grep nvidia ; then
		echo "used NVIDIA Try set VFIO"
		sudo virsh nodedev-detach pci_0000_01_00_0
		sudo rmmod nvidia_modeset nvidia_drm nvidia
		sudo modprobe -i vfio_pci vfio vfio_iommu_type1
	fi
fi
