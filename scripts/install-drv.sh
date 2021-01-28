#!/bin/bash
#depmod -a || true
#modprobe -r nouveau || true
#modprobe nvidia
#modprobe nvidia-uvm
nvidia-mkdevs
cp -rfn ${NVIDIA_PATH}/bin /opt/nvidia-host
cp -rfn ${NVIDIA_PATH}/lib64 /opt/nvidia-host
