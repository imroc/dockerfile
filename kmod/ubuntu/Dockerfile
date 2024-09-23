ARG UBUNTU_VERSION=24.04

FROM ubuntu:${UBUNTU_VERSION}

RUN apt update -y && apt install -y kmod

RUN apt-get clean autoclean && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/


