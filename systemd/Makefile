SHELL := /bin/bash
IMAGE := cr.imroc.cc/library/systemd:latest

.PHONY: build
build:
	docker build . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)