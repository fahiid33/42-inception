FROM debian:buster

EXPOSE 9000

RUN apt update -y && apt upgrade -y && apt-get install -y wget \
    && apt-get install -y php7.3-fpm \
    php-mysql \
    mariadb-client

RUN mkdir -p /var/www/html \
    && wget --no-check-certificate https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz --strip-components=1 -C /var/www/html \
    && rm latest.tar.gz \
    && chown -R www-data:www-data /var/www/html

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY  ./tools/wp-config.php /var/www/html/wp-config.php

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize", "--fpm-config", "/etc/php/7.3/fpm/pool.d/www.conf"]

CMD ["-F"]
