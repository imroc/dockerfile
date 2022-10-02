FROM registry.imroc.cc/library/build-tools:latest as builder
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest

FROM registry.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/grpcurl /usr/local/bin/grpcurl
CMD ["sleep", "infinity"]