FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/*

COPY ./tools/init-db.sql /

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN chmod +x /usr/local/bin/mariadb.sh

# RUN chmod +x /usr/local/bin/mysqld.conf

RUN service mysql start && mysql < /init-db.sql 

# ENTRYPOINT ["/usr/local/bin/mariadb.sh"]

CMD ["mysqld"]
