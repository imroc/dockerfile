FROM quay.io/kiali/kiali:v1.17.0

ENV PATH="$PATH:/opt/go/bin:/root/go/bin"

RUN microdnf install tar gzip

RUN curl -L https://git.io/vQhTU | GOROOT=/opt/go bash -s -- --version 1.20.5

RUN go install github.com/go-delve/delve/cmd/dlv@latest