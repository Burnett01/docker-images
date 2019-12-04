FROM php:7.3-cli-buster

# Dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    mariadb-client \
  	libjpeg-dev \
  	libpng-dev \
    libmagickwand-dev \
    libmcrypt-dev \
    git \
    zip \
  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
  && docker-php-ext-install gd \
  && docker-php-ext-install zip \
  && docker-php-ext-install exif \
  && docker-php-ext-install mbstring \
  && docker-php-ext-install mcrypt \
  && docker-php-ext-install mysqli pdo pdo_mysql \
  && rm -rf /var/lib/apt/lists/*

# Imagick
RUN pecl install imagick \
  && docker-php-ext-enable imagick

# Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer

ENV PATH "$PATH:~/.composer/vendor/bin"

# Entrypoint
COPY bootstrap/entry.sh /usr/local/bin/
RUN ln -s usr/local/bin/entry.sh /entry.sh

ENTRYPOINT ["entry.sh"]
