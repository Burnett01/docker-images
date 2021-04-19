# alpine-php8-lumen ![alpine-php8-lumen](https://github.com/Burnett01/docker-images/workflows/alpine-php8-lumen/badge.svg?branch=alpine-php8-lumen)

Docker Image for developing [Laravel Lumen](https://lumen.laravel.com/) applications using Alpine Linux, PHP 8.0.3-r0, Composer, <br>
and the latest Laravel Lumen version.

Features:

    + Lumen first-time setup
    + PHP 8.0.3-r0, MySQL (PDO), SQLite (PDO), Composer, Curl, PHP 8 extensions
    + Uses built-in PHP 8 webserver (best to use with NGINX/Apache2 proxy in production)

This image ships with a first-time setup routine, in order to install a Laravel Lumen project.<br>
That routine will be skipped, if a project exists already.

## Install

**Use as base-image:**

```FROM burnett0/alpine-php8-lumen```

Exposes: Port 80

If used as base image, you must manually mount your host source folder to ``/lumen`` on the guest.

Check the docker-compose example below, to get more information.

**Use with docker-compose:**

```yml
version: "3"
services:
  lumen:
    image: "burnett0/alpine-php8-lumen"
    volumes:
      - ./src:/lumen
    ports:
      - "80:80"
    tty: true
```

```docker-compose up```

## Usage

After setup, all project files are located in your source folder. <br>
In the docker-compose example above, it is ``src/*``.

The built-in PHP 8 webserver can be accessed via port 80.

Example:  ``http://YOUR-DOCKER-IP-OR-HOST``

You can change the port and other things in the ``docker-compose.yml`` file.

