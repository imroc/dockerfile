FROM cr.imroc.cc/library/net-tools:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y make build-essential autoconf libtool pkg-config libssl-dev unzip cmake vim golang python3 python3-pip
RUN go get -v github.com/bazelbuild/bazelisk && cp /root/go/bin/bazelisk /usr/local/bin/bazel && bazel --version
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-is-python3 gcc g++ clang
