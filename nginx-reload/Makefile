SHELL := /bin/bash
IMAGE := registry.imroc.cc/library/nginx-reload:latest

.PHONY: build
build:
	docker buildx build --platform=linux/amd64 --push . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)

