# Base Image
FROM burnett0/alpine-php7

LABEL maintainer "Steven Agyekum <Burnett01>"

# Expose
EXPOSE 80

# Setup
COPY docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh

# Entry
ENTRYPOINT ["/entrypoint.sh"]

