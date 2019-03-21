FROM alpine

RUN apk add terraform ca-certificates git

ENTRYPOINT ["terraform"]