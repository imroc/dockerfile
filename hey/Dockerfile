FROM registry.imroc.cc/library/build-tools:latest as builder
RUN go install github.com/rakyll/hey@latest

FROM registry.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/hey /usr/local/bin/hey
CMD ["sleep", "infinity"]