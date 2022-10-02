# Base Image
FROM burnett0/alpine-php81-cli-pdo-mysql

LABEL maintainer "Steven Agyekum <Burnett01>"

# Dependencies
RUN apk --update --no-cache add \
    git curl ca-certificates composer \
    php81-phar php81-tokenizer php81-zip php81-curl php81-mbstring \
    php81-dom php81-xml php81-xmlwriter php81-ctype php81-intl php81-pecl-uuid \
    php81-ftp php81-bcmath php81-pecl-memcached php81-gmp php81-pdo_sqlite php81-sodium php81-sysvsem \
    php81-pcntl php81-fileinfo php81-iconv php81-posix php81-gd php81-soap php81-pecl-xdebug php81-simplexml php81-json php81-pecl-apcu 

RUN echo "zend_extension=xdebug" >> /etc/php81/php.ini

# SSL Certs
RUN curl -O -k http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem /etc/ssl/cert.pem
RUN update-ca-certificates

# Cleanup
RUN rm -rf /var/cache/apk/*


