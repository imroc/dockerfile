FROM docker.io/library/ubuntu:22.04

RUN apt update -y && apt install -y curl && \
    source /etc/os-release && \
    curl https://pkg.cloudflareclient.com/pubkey.gpg | gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ ${VERSION_CODENAME} main" | tee /etc/apt/sources.list.d/cloudflare-client.list && \
    apt update -y && \
    apt install cloudflare-warp -y && \
    warp-cli --accept-tos set-mode proxy && \
    warp-cli --accept-tos connect && \
    warp-cli --accept-tos enable-always-on