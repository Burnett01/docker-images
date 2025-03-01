# Base Image
FROM burnett0/alpine-php83-cli-pdo-mysql

LABEL maintainer "Steven Agyekum <Burnett01>"

# Dependencies
RUN apk --update --no-cache add \
    git curl ca-certificates composer \
    php83-phar php83-tokenizer php83-zip php83-curl php83-mbstring \
    php83-dom php83-xml php83-xmlwriter php83-ctype php83-intl php83-pecl-uuid \
    php83-ftp php83-bcmath php83-pecl-memcached php83-gmp php83-pdo_sqlite php83-sodium php83-sysvsem \
    php83-pcntl php83-fileinfo php83-iconv php83-posix php83-gd php83-soap php83-pecl-xdebug php83-simplexml php83-json php83-pecl-apcu 

RUN echo "zend_extension=xdebug" >> /etc/php83/php.ini

# SSL Certs
RUN curl -O -k http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem /etc/ssl/cert.pem
RUN update-ca-certificates

# Cleanup
RUN rm -rf /var/cache/apk/*



