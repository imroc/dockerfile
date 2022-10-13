FROM registry.imroc.cc/library/build-tools:latest as builder
RUN go install fortio.org/fortio@latest
RUN go install github.com/rakyll/hey@latest
RUN git clone --depth 1 https://github.com/wg/wrk.git /tmp/wrk && cd /tmp/wrk && make && mv wrk /usr/local/bin/ && rm -rf /tmp/wrk

FROM registry.imroc.cc/library/net-tools:latest
COPY --from=builder /root/go/bin/fortio /usr/local/bin/fortio
COPY --from=builder /root/go/bin/hey /usr/local/bin/hey
COPY --from=builder /tmp/wrk/wrk /usr/local/bin/wrk

CMD ["sleep", "infinity"]