FROM FROM alpine:3.11

# Dependencies
RUN apk --update --no-cache add bash php7 php7-pdo php7-pdo_mysql
RUN rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
