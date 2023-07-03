FROM imroc/golang:1.20.5 as go

FROM quay.io/kiali/kiali:v1.17.0

COPY --from=go /go/bin/dlv /bin/dlv