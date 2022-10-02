SHELL := /bin/bash
IMAGE := registry.imroc.cc/library/etcd:latest

.PHONY: all
all: build push

.PHONY: build
build:
	docker build . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)