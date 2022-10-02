FROM registry.imroc.cc/library/build-tools:latest as builder
RUN go install fortio.org/fortio@latest

FROM registry.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/fortio /usr/local/bin/fortio
CMD ["sleep", "infinity"]