FROM composer:latest

RUN addgroup -g 1000 develop && adduser -G develop -g develop -s /bin/sh -D develop

WORKDIR /var/www/html
