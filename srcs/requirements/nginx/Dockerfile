FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt install -y nginx 

RUN [ -f /etc/nginx/conf.d/default.conf ] && rm /etc/nginx/conf.d/default.conf || echo "File not found" 

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /var/www/html/*

COPY ./tools/fstitou.42.fr.crt /etc/nginx/ssl/ 
COPY ./tools/fstitou.42.fr.key /etc/nginx/ssl/
COPY ./tools/nginx-index.html  /var/www/html/

RUN chmod 644 /etc/nginx/nginx.conf

EXPOSE 443 

CMD ["nginx", "-g", "daemon off;"]
