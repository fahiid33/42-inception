FROM debian:buster

EXPOSE 9000

RUN apt update -y && apt upgrade -y && apt-get install -y wget \
    && apt-get install -y php7.3-fpm \
    php-mysql \
    mariadb-client


RUN wget https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && rm latest.tar.gz \
    &&  cd /var/www

RUN		chown -R root:root /var/www/wordpress

COPY ./tools/wp.sh /tmp/wp.sh

COPY ./conf/wp.conf /etc/php/7.3/fpm/pool.d/wp.conf

RUN chmod +x /tmp/wp.sh

ENTRYPOINT ["/tmp/wp.sh"]


CMD ["php-fpm7.3", "-F"]