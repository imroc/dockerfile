SHELL := /bin/bash
IMAGE := cr.imroc.cc/library/tini:latest

.PHONY: build
build:
	docker buildx build --platform=linux/amd64 . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)