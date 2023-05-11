FROM debian:buster

EXPOSE 443

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install openssl -y \
	&& apt-get install nginx -y \
	&& mkdir -p /etc/ssl/key/ \
	&& mkdir -p /etc/ssl/crt/ 
	# && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/key/inception.key -out /etc/ssl/incpetion.crt

COPY ./tools/default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]
