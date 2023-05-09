FROM debian:buster

EXPOSE 443

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install openssl -y \
	&& apt-get install nginx -y \
	&& mkdir -p /etc/ssl/key/ \
	&& mkdir -p /etc/ssl/cert/ 
	# && openssl 

CMD ["nginx", "-g", "daemon off;"]
