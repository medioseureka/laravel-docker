FROM nginx:stable-alpine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html && addgroup -g 1000 develop && adduser -G develop -g develop -s /bin/sh -D develop && chown develop:develop /var/www/html
