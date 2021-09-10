FROM cr.imroc.cc/library/golang:latest as builder
RUN go get github.com/oauth2-proxy/oauth2-proxy

FROM cr.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/oauth2-proxy /usr/local/bin/oauth2-proxy
CMD ["oauth2-proxy"]