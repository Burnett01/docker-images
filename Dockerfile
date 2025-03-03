FROM alpine:3.21

# Dependencies
RUN apk --update --no-cache add bash php83 php83-pdo php83-pdo_mysql php83-mysqli
RUN rm -rf /var/cache/apk/*
