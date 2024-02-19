FROM ubuntu:latest

RUN apt update -y && apt upgrade -y && \
  DEBIAN_FRONTEND=noninteractive apt install -y \
  curl wget ca-certificates unzip && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.3.0/kustomize_v5.3.0_linux_amd64.tar.gz -O - | tar xz && mv kustomize /usr/local/bin/kustomize && chmod +x /usr/local/bin/kustomize \
  wget https://get.helm.sh/helm-v3.14.1-linux-amd64.tar.gz -O - | tar xz && mv linux-amd64/helm /usr/local/bin/helm && chmod +x /usr/local/bin/helm && rm -rf linux-amd64
