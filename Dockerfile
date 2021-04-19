# Base Image
FROM burnett0/alpine-php8-cli-pdo-mysql

LABEL maintainer "Steven Agyekum <Burnett01>"

# Dependencies
RUN apk --update --no-cache add \
    git curl ca-certificates composer \
    php8-tokenizer php8-zip php8-curl php8-mbstring \
    php8-dom php8-xml php8-xmlwriter php8-ctype php8-intl php8-pecl-uuid \
    php8-ftp php8-bcmath php8-pecl-memcached php8-gmp php8-pdo_sqlite \
    php8-pcntl php8-posix php8-gd php8-soap php8-pecl-xdebug php8-simplexml php8-json

RUN ln -nsf /usr/bin/php8 /usr/bin/php

# SSL Certs
RUN curl -O -k http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem /etc/ssl/cert.pem
RUN update-ca-certificates

# Cleanup
RUN rm -rf /var/cache/apk/*

