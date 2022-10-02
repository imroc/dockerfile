SHELL := /bin/bash
IMAGE := registry.imroc.cc/library/fortio:latest

.PHONY: all
all: build push

.PHONY: build
build:
	docker build . --no-cache -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)