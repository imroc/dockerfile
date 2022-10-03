FROM gcr.io/kaniko-project/executor:v1.5.1 as kaniko
FROM ubuntu:22.04

ENV DOCKER_CONFIG=/kaniko/.docker/ \
    SSL_CERT_DIR=/kaniko/ssl/certs

RUN apt update -y && apt install curl -y

COPY --from=kaniko /kaniko/executor /kaniko/executor