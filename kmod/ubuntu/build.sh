#!/bin/bash

UBUNTU_VERSION=$1

if [ -z "${UBUNTU_VERSION}" ]; then
  echo "need ubuntu version"
  exit 1
fi

IMAGE_NAME="docker.io/imroc/kmod:ubuntu-${UBUNTU_VERSION}"

extra_arg=""

if ! [ -z "${UBUNTU_VERSION}" ]; then
  extra_arg="--build-arg UBUNTU_VERSION=${UBUNTU_VERSION}"
fi

docker buildx build $extra_arg "--platform=linux/amd64,linux/arm64" -t ${IMAGE_NAME} --push .
