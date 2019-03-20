FROM alpine

RUN apk add terraform ca-certificates

ENTRYPOINT ["terraform"]