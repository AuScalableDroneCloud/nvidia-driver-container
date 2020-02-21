set -x 
FEDORA_VERSION=29
KERNEL_VERSION=`uname -r`
NVIDIA_DRIVER_VERSION=440.59

CONTAINER_TAG=docker.io/stackhpc/nvidia-driver-installer:${FEDORA_VERSION}-${KERNEL_VERSION}-${NVIDIA_DRIVER_VERSION}
sudo podman build \
	--rm=false \
	--network=host \
	--build-arg FEDORA_VERSION=${FEDORA_VERSION} \
	--build-arg KERNEL_VERSION=${KERNEL_VERSION} \
	--build-arg NVIDIA_DRIVER_VERSION=${NVIDIA_DRIVER_VERSION} \
	--tag ${CONTAINER_TAG} \
	--file Dockerfile.fedatomic .
sudo podman login ${CONTAINER_TAG}
sudo podman push ${CONTAINER_TAG}
