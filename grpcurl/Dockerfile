FROM cr.imroc.cc/library/golang:latest as builder
RUN go get github.com/fullstorydev/grpcurl/cmd/grpcurl

FROM cr.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/grpcurl /usr/local/bin/grpcurl
CMD ["sleep", "infinity"]