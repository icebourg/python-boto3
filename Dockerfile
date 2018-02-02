FROM alpine:3.7
MAINTAINER AJ Bourg

RUN apk update && \
    apk upgrade && \
    apk add --update build-base py-pip && \
    rm -rf /var/cache/apk/*

RUN pip install boto3 pyyaml

RUN adduser -S worker
USER worker

WORKDIR /work
