# Base Image
FROM burnett0/alpine-php84-cli-pdo-mysql

LABEL maintainer "Steven Agyekum <Burnett01>"

# Dependencies
RUN apk --update --no-cache add \
    git curl ca-certificates composer \
    php84-phar php84-tokenizer php84-zip php84-curl php84-mbstring \
    php84-dom php84-xml php84-xmlwriter php84-ctype php84-intl php84-pecl-uuid \
    php84-ftp php84-bcmath php84-pecl-memcached php84-gmp php84-pdo_sqlite php84-sodium php84-sysvsem php84-opcache \
    php84-pcntl php84-fileinfo php84-iconv php84-posix php84-gd php84-soap php84-pecl-xdebug php84-simplexml php84-json php84-pecl-apcu 

RUN echo "zend_extension=xdebug" >> /etc/php84/php.ini

# SSL Certs
RUN curl -O -k http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem /etc/ssl/cert.pem
RUN update-ca-certificates

# Cleanup
RUN rm -rf /var/cache/apk/*



