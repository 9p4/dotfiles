#!/bin/bash
sudo modprobe -r nvidia_uvm nvidia_drm nvidia_modeset nvidia
echo 'auto' | sudo tee '/sys/bus/pci/devices/0000:01:00.0/power/control'
echo '1' | sudo tee '/sys/bus/pci/devices/0000:01:00.0/remove'
