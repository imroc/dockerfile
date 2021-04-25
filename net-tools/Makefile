SHELL := /bin/bash
IMAGE := cr.imroc.cc/library/net-tools:latest

.PHONY: build
build:
	docker build . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)