FROM golang:1.11-alpine3.9

ARG TF_VERSION=v0.12.3

RUN apk add --no-cache git openssh ca-certificates

RUN git clone --depth 1 -b ${TF_VERSION} https://github.com/hashicorp/terraform.git /go/src/github.com/hashicorp/terraform

WORKDIR /go/src/github.com/hashicorp/terraform

RUN go install .

ENTRYPOINT ["terraform"]