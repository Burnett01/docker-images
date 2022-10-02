# Base Image
FROM burnett0/alpine-php81

LABEL maintainer "Steven Agyekum <Burnett01>"

# Dependencies
RUN apk --update --no-cache add nodejs npm yarn

# Cleanup
RUN rm -rf /var/cache/apk/*
