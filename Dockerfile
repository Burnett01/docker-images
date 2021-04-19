FROM alpine:edge

# Dependencies
RUN apk --update --no-cache add bash php8 php8-pdo php8-pdo_mysql
RUN rm -rf /var/cache/apk/*
