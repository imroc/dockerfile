FROM cr.imroc.cc/library/golang:latest as builder
RUN go get fortio.org/fortio

FROM cr.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/fortio /usr/local/bin/fortio
CMD ["sleep", "infinity"]