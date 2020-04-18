FROM node:lts-alpine
RUN apk update && apk add --no-cache chromium
RUN rm -rf /var/cache/apk/*

LABEL maintainer "Steven Agyekum <Burnett01>"

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser

COPY drawio-batch .
RUN npm i -g --unsafe-perm

ENTRYPOINT ["drawio-batch"]
