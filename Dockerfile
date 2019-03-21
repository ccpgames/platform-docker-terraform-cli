FROM alpine

RUN apk add terraform ca-certificates git openssh-client

ENTRYPOINT ["terraform"]