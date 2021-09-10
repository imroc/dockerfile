SHELL := /bin/bash
IMAGE := cr.imroc.cc/library/ubuntu:test

.PHONY: build
build:
	docker build . --no-cache -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)