FROM quay.io/kiali/kiali:v1.17.0

ENV PATH="$PATH:/opt/go/bin:/go/bin"

RUN microdnf install tar

RUN GOROOT=/opt/go GOPATH=/go curl -L https://git.io/vQhTU | bash -s -- --version 1.20.5

RUN go install github.com/go-delve/delve/cmd/dlv@latest

