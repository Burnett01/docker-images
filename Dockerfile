FROM alpine:edge

# Dependencies
RUN apk --update --no-cache add bash php7 php7-pdo php7-pdo_mysql
RUN rm -rf /var/cache/apk/*

