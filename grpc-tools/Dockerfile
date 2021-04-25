FROM cr.imroc.cc/library/grpc_cli:latest as grpc_cli
FROM cr.imroc.cc/library/grpcurl:latest as grpcurl

FROM cr.imroc.cc/library/net-tools:latest
COPY --from=grpc_cli /usr/local/bin/grpc_cli /usr/local/bin/grpc_cli
COPY --from=grpcurl /usr/local/bin/grpcurl /usr/local/bin/grpcurl
CMD ["sleep", "infinity"]