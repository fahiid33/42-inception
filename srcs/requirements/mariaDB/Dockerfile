FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/*

COPY ./tools/mariadb.sh /usr/local/bin/

COPY ./conf/wp.conf /usr/local/bin/

RUN chmod +x /usr/local/bin/mariadb.sh

RUN chmod +x /usr/local/bin/wp.conf

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/mariadb.sh"]

CMD ["mysqld"]
