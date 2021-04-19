# Base Image
FROM burnett0/alpine-php7-cli-pdo-mysql

LABEL maintainer "Steven Agyekum <Burnett01>"

# Dependencies
RUN apk --update --no-cache add \
    git curl ca-certificates composer \
    php7-tokenizer php7-zip php7-curl php7-mbstring \
    php7-dom php7-xml php7-xmlwriter php7-ctype php7-intl php7-pecl-uuid \
    php7-ftp php7-bcmath php7-pecl-memcached php7-gmp php7-pdo_sqlite \
    php7-pcntl php7-posix php7-gd php7-soap php7-pecl-xdebug php7-simplexml php7-json

# SSL Certs
RUN curl -O -k http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem /etc/ssl/cert.pem
RUN update-ca-certificates

# Cleanup
RUN rm -rf /var/cache/apk/*

