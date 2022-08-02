FROM alpine:edge

# Dependencies
RUN apk --update --no-cache add bash php81=8.1.8-r3 php81-pdo php81-pdo_mysql
RUN rm -rf /var/cache/apk/*


