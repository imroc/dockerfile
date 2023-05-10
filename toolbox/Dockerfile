FROM ubuntu:22.10
RUN apt-get update -y && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y \
        curl wget telnet netcat-openbsd iproute2 net-tools openssl \
        git openssh-client dnsutils tcpdump lrzsz iputils-ping jq \
        iputils-arping node-ws ethtool iptables nftables conntrack\
        make build-essential autoconf libtool pkg-config nginx \
        libssl-dev unzip cmake vim golang python3 python3-pip \
        python-is-python3 gcc g++ clang
RUN git clone --depth=1 https://github.com/wg/wrk.git /tmp/wrk && cd /tmp/wrk && make && cp wrk /usr/local/bin && rm -rf /tmp/wrk
RUN go install github.com/bazelbuild/bazelisk@latest && cp /root/go/bin/bazelisk /usr/local/bin/bazel && bazel --version
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
RUN go install github.com/rakyll/hey@latest
RUN go install fortio.org/fortio@latest
RUN go install go.k6.io/k6@latest
ENV PATH="$PATH:/root/go/bin"
CMD ["sleep", "infinity"]