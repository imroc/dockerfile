FROM ubuntu:24.04

ENV DEBIAN_FRONTEND oninteractive

# Install basic net tools
RUN apt-get update -y && apt-get install -y \
  curl wget telnet iproute2 net-tools openssl ca-certificates \
  git dnsutils tcpdump iputils-ping jq netcat-openbsd \
  iputils-arping ethtool iptables nftables conntrack 

# Install httpie
RUN curl -SsL https://packages.httpie.io/deb/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/httpie.gpg \
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/httpie.gpg] https://packages.httpie.io/deb ./" | tee /etc/apt/sources.list.d/httpie.list > /dev/null \
  apt update \
  apt install httpie -y

# Cleanup cache
RUN apt-get clean autoclean && \
  apt-get autoremove --yes && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

CMD ["sleep", "infinity"]
