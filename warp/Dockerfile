FROM ubuntu:22.10
RUN apt update && apt install -y curl gpg supervisor net-tools ca-certificates && curl https://pkg.cloudflareclient.com/pubkey.gpg |  gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ jammy main" |  tee /etc/apt/sources.list.d/cloudflare-client.list && apt update && apt install cloudflare-warp -y &&  apt-get clean
COPY run.sh /run.sh
COPY changeip.sh /changeip.sh
COPY reconnect.sh /bin/reconnect
COPY warp.conf /etc/supervisor/conf.d/warp.conf
RUN chmod +x /run.sh && chmod +x /bin/reconnect && chmod +x /changeip.sh
EXPOSE "40000/tcp"
CMD ["/run.sh"]