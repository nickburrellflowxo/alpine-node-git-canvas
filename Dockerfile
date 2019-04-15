FROM alpine:edge

RUN apk add --update --no-cache gcc g++ make libc6-compat

RUN apk add --update \
  --repository http://dl-3.alpinelinux.org/alpine/edge/testing \
  vips-tools \
  && rm -rf /var/cache/apk/*

RUN apk add --no-cache \
    build-base \
    cairo \
    nodejs nodejs-npm \
    python \
    git \
    openssh \
    jpeg-dev \
    pango-dev \
    giflib-dev

RUN apk add --update  --repository http://dl-3.alpinelinux.org/alpine/edge/testing libmount ttf-opensans ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family fontconfig