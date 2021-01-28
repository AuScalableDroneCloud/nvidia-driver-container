#!/bin/bash
echo 1
depmod -a || true
echo 2
modprobe -r nouveau || true
echo 3
modprobe nvidia
echo 4
modprobe nvidia-uvm
echo 5
nvidia-mkdevs
echo 6
cp -rfn ${NVIDIA_PATH}/bin /opt/nvidia-host
cp -rfn ${NVIDIA_PATH}/lib64 /opt/nvidia-host
