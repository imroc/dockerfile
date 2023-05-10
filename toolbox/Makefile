SHELL := /bin/bash
IMAGE := imroc/toolbox:latest

.PHONY: all
all: build push

.PHONY: build
build:
	docker build . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)