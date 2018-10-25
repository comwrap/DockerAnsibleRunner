FROM alpine:latest
RUN apk add --no-cache git ansible openssh bash-completion nano \
    && apk --update add sudo \
    && apk --update add python py-pip openssl ca-certificates \
    && apk --update add sshpass openssh-client rsync \
    && rm -rf /var/cache/apk/*
