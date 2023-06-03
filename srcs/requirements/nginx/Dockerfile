FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt install -y nginx 

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /var/www/html/*

COPY ./tools/fstitou.42.fr.crt /etc/nginx/ssl/ 
COPY ./tools/fstitou.42.fr.key /etc/nginx/ssl/
COPY ./tools/index.html  /var/www/html/

RUN chmod 644 /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
