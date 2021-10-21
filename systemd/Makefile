SHELL := /bin/bash
IMAGE := cr.imroc.cc/library/systemd:latest

.PHONY: build
build:
	docker buildx build --platform=linux/amd64 . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)