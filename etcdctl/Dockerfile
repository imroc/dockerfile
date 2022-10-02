FROM registry.imroc.cc/library/net-tools:latest

RUN cd /tmp && wget -c https://github.com/etcd-io/etcd/releases/download/v3.5.4/etcd-v3.5.4-linux-amd64.tar.gz -O - | tar -zxv && \
      mv etcd-v3.5.4-linux-amd64/etcd* /usr/local/bin/