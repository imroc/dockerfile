FROM cr.imroc.cc/library/build-tools:latest as builder
COPY ./grpc /grpc
RUN cd /grpc && mkdir -p cmake/build && cd cmake/build && cmake -DgRPC_BUILD_TESTS=ON ../.. && make grpc_cli

FROM cr.imroc.cc/library/net-tools:latest
COPY --from=builder /grpc/cmake/build/grpc_cli /usr/local/bin/grpc_cli
CMD ["sleep", "infinity"]
