FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl build-essential pkg-config openssl libssl-dev

RUN cd /tmp && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install.sh && \
    chmod +x install.sh && ./install.sh -y && \
    rm /tmp/install.sh && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

ENV PATH="$PATH:/root/.cargo/bin"