FROM docker.io/golang:latest as builder
RUN go install github.com/oauth2-proxy/oauth2-proxy@latest

FROM docker.io/ubuntu:latest
COPY --from=builder /go/bin/oauth2-proxy /usr/local/bin/oauth2-proxy
CMD ["oauth2-proxy"]