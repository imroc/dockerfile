SHELL := /bin/bash
IMAGE := cr.imroc.cc/test/consumer-demo:latest

.PHONY: build
build:
	docker build . -t $(IMAGE)

.PHONY: push
push:
	docker push $(IMAGE)

.PHONY: msgw
msgw:
	docker build . -t ccr.ccs.tencentyun.com/tsf_3321337994/ttt:latest -f msgw.Dockerfile