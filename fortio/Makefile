SHELL := /bin/bash
IMAGE := imroc/fortio:latest

.PHONY: all
all: build push

.PHONY: build
build:
	docker build . --no-cache -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)