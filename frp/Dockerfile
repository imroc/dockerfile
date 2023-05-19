FROM imroc/toolbox:latest as downloader

RUN wget https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_amd64.tar.gz -O /tmp/frp.tar.gz && tar -zxvf /tmp/frp.tar.gz -C /tmp

FROM ubuntu:22.04

COPY --from=downloader /tmp/frp_0.48.0_linux_amd64/frpc /usr/local/bin/frpc
COPY --from=downloader /tmp/frp_0.48.0_linux_amd64/frps /usr/local/bin/frps