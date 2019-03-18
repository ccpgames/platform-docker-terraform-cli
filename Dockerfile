FROM alpine

RUN apk add terraform

ENTRYPOINT ["terraform"]