#!/bin/bash

#Utility script to update the kernel and/or nvidia driver versions

OLD_KERNEL_VERSION=5.7.16
KERNEL_VERSION=5.7.16

OLD_KERNEL_REV=200
KERNEL_REV=200

OLD_NVIDIA_DRIVER_VERSION=450.102.04
NVIDIA_DRIVER_VERSION=460.32.03

for file in Dockerfile.fedatomic daemonsets/nvidia-gpu-device-plugin-fedatomic.yaml .github/workflows/build.yml
do
  echo $file
  sed -i "s/${OLD_KERNEL_VERSION}\(.\)${OLD_KERNEL_REV}/${KERNEL_VERSION}\1${KERNEL_REV}/g" $file
  sed -i "s/${OLD_NVIDIA_DRIVER_VERSION}/${NVIDIA_DRIVER_VERSION}/g" $file
done
