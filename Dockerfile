FROM alpine:3.21

RUN apk --update --no-cache add bash php84 php84-pdo php84-pdo_mysql php84-mysqli
RUN rm -rf /var/cache/apk/*
