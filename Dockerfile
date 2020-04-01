FROM docker:dind
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.0.2"

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing shc
