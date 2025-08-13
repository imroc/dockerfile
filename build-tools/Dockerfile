FROM registry.imroc.cc/library/net-tools:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
        make build-essential autoconf libtool pkg-config \
        libssl-dev unzip cmake vim golang python3 python3-pip \
        python-is-python3 gcc g++ clang
RUN go install github.com/bazelbuild/bazelisk@latest && cp /root/go/bin/bazelisk /usr/local/bin/bazel && bazel --version
