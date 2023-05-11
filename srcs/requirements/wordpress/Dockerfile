FROM debian:buster

EXPOSE 9000

RUN apt update -y && apt upgrade -y && apt-get install -y wget \
    && apt-get install -y php7.3-fpm \
    php-mysql \
    mariadb-client

RUN mkdir -p /var/www/wordpress \
    && wget --no-check-certificate https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz --strip-components=1 -C /var/www/wordpress \
    && rm latest.tar.gz \
    && chown -R www-data:www-data /var/www/wordpress

COPY ./conf/wp.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize", "--fpm-config", "/etc/php/7.3/fpm/pool.d/www.conf"]

CMD ["-F"]
