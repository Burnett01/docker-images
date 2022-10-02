# alpine-php81-nodejs ![alpine-php81-nodejs](https://github.com/Burnett01/docker-images/workflows/alpine-php81-nodejs/badge.svg?branch=alpine-php81-nodejs)

Docker Image for developing PHP-8.1 applications using Alpine Linux, PHP 8.1.8-r3, Composer, node.js, npm and yarn.

Features:

    + PHP 8.1.8-r3, MySQL (PDO), SQLite (PDO), Composer, Curl, PHP 8.1 extensions, XDEBUG, node.js, npm, yarn

## Install

**Use with docker-compose:**

```yml
version: "3"
services:
  site:
    image: "burnett0/alpine-php81-nodejs"
    command: "php -S 0.0.0.0:80 -t /src"
    volumes:
      - ./src:/src
    ports:
      - "80:80"
    tty: true
```

```docker-compose up```

## Usage

 All project files are located in your source folder.<br/>
 In the docker-compose example above, it is ``src/*``.

The built-in PHP 8.1 webserver will serve the content of that folder that can be accessed on port 80.

Example:  ``http://YOUR-DOCKER-IP-OR-HOST``

You can change the path, port and other things in the ``docker-compose.yml`` file.
