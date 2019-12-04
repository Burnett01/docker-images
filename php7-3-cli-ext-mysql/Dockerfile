FROM php:7.3-cli-buster

# Dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    mariadb-client \
    libzip-dev\
    git \
    zip \
  && docker-php-ext-install zip \
  && docker-php-ext-install mysqli pdo pdo_mysql \
  && rm -rf /var/lib/apt/lists/*

# Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer

ENV PATH "$PATH:~/.composer/vendor/bin"
