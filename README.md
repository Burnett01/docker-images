# alpine-php8 ![alpine-php8](https://github.com/Burnett01/docker-images/workflows/alpine-php8/badge.svg?branch=alpine-php8)

Docker Image for developing PHP-8 applications using Alpine Linux, PHP 8.0.3-r0 and Composer.

Features:

    + PHP 8.0.3-r0, MySQL (PDO), SQLite (PDO), Composer, Curl, PHP 8 extensions

## Install

**Use with docker-compose:**

```yml
version: "3"
services:
  site:
    image: "burnett0/alpine-php8"
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

The built-in PHP 8 webserver will serve the content of that folder that can be accessed on port 80.

Example:  ``http://YOUR-DOCKER-IP-OR-HOST``

You can change the path, port and other things in the ``docker-compose.yml`` file.

