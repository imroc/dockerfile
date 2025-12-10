SHELL := /bin/bash
IMAGE := imroc/mycli:latest

image: build push

.PHONY: build
build:
	docker build . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)
