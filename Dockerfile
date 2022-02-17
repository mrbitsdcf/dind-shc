FROM docker:dind
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.0.4"

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing shc
RUN apk add bash
RUN apk add --no-cache --update git curl libffi-dev openssl-dev python3 python3-dev build-base &&  \
        curl -O https://bootstrap.pypa.io/get-pip.py && \
        python3 get-pip.py && \
        pip install --upgrade six awscli awsebcli s3cmd && \
        rm -rf /var/cache/apk/*
