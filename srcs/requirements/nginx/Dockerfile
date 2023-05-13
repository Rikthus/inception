FROM debian:buster

EXPOSE 443

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install openssl -y \
	&& apt-get install nginx -y \
	&& mkdir -p /etc/ssl/private/ \
	&& mkdir -p /etc/ssl/certs/ \
	&& openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/inception.key -out /etc/ssl/certs/inception.crt -subj /C=FR

COPY ./tools/default /etc/nginx/sites-available/inception-site

RUN ln -s /etc/nginx/sites-available/inception-site /etc/nginx/sites-enabled/inception-site

ENTRYPOINT ["nginx", "-g", "daemon off;"]
