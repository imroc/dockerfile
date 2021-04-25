FROM cr.imroc.cc/library/build:latest
RUN git clone --depth 1 https://github.com/wg/wrk.git /tmp/wrk && cd /tmp/wrk && make && cp wrk /usr/local/bin
CMD ["/usr/local/bin/wrk"]