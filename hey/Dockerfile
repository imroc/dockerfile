FROM cr.imroc.cc/library/golang:latest as builder
RUN go get github.com/rakyll/hey

FROM cr.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/hey /usr/local/bin/hey
CMD ["sleep", "infinity"]