SHELL := /bin/bash
IMAGE := docker.io/imroc/net-tools:latest
CONTAINER_TOOL ?= podman

.PHONY: docker-build
docker-build: ## Build docker image with the manager.
	$(CONTAINER_TOOL) build --platform linux/amd64 -t ${IMAGE} .

.PHONY: docker-push
docker-push: ## Push docker image with the manager.
	$(CONTAINER_TOOL) push ${IMAGE}

.PHONY: docker-build-push
docker-build-push: docker-build docker-push
