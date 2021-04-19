FROM alpine:edge

# Dependencies
RUN apk --update --no-cache add bash php8=8.0.3-r0 php8-pdo php8-pdo_mysql
RUN ln -s /usr/bin/php8 /usr/bin/php
RUN rm -rf /var/cache/apk/*

