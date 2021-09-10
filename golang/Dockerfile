FROM cr.imroc.cc/library/build-tools:latest
RUN cd /tmp && wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && tar -zxvf go1.16.5.linux-amd64.tar.gz && mv go /usr/local/
ENV PATH="/usr/local/go/bin:${PATH}"