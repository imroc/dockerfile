FROM ubuntu:22.10
RUN apt-get update -y && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y \
        curl wget telnet netcat-openbsd iproute2 net-tools openssl \
        git openssh-client dnsutils tcpdump lrzsz iputils-ping \
        iputils-arping node-ws
CMD ["sleep", "infinity"]