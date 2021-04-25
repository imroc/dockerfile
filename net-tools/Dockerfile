FROM cr.imroc.cc/library/ubuntu:latest
RUN apt-get install -y curl wget telnet netcat iproute2 net-tools openssl git openssh-client
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y dnsutils
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y tcpdump lrzsz
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y iputils-ping iputils-arping
CMD ["sleep", "infinity"]