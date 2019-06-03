FROM golang:1.11-alpine3.9

RUN apk update && apk add git ca-certificates

RUN git clone --depth 1 -b v0.11.14 https://github.com/hashicorp/terraform.git /go/src/github.com/hashicorp/terraform

WORKDIR /go/src/github.com/hashicorp/terraform

RUN go install .

ENTRYPOINT ["terraform"]