SHELL := /bin/bash

.PHONY: c
c:
	podman build  . -t docker.io/imroc/crontab:centos -f centos.Dockerfile

.PHONY: u
u:
	podman build  . -t  docker.io/imroc/crontab:ubuntu -f ubuntu.Dockerfile