ARG PHP_VERSION
FROM php:${PHP_VERSION}

# Installing dependencies for building the PHP modules
RUN apt update && \
    apt install -y zip libzip-dev libpng-dev libicu-dev libxml2-dev

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Installing additional PHP modules
RUN docker-php-ext-install mysqli pdo pdo_mysql gd zip intl xml

# Cleaning APT cache
RUN apt clean