FROM ubuntu:latest

RUN apt update -y && apt upgrade -y && \
  DEBIAN_FRONTEND=noninteractive apt install -y \
  curl wget ca-certificates unzip && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /plugin-tools && \
  wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.3.0/kustomize_v5.3.0_linux_amd64.tar.gz -O - | tar xz && mv kustomize /plugin-tools/kustomize && chmod +x /plugin-tools/kustomize && \
  wget https://get.helm.sh/helm-v3.14.1-linux-amd64.tar.gz -O - | tar xz && mv linux-amd64/helm /plugin-tools/helm && chmod +x /plugin-tools/helm && rm -rf linux-amd64
