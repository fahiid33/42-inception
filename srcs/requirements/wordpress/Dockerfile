FROM debian:buster

RUN apt-get update
RUN apt-get -y install wget php7.3 php-fpm php-mysqli


COPY ./tools/ /var/www/
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/


RUN chmod +x /var/www/install-wp.sh

CMD [ "/var/www/install-wp.sh" , "/usr/sbin/php-fpm7.3", "--nodaemonize"]