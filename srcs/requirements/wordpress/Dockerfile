FROM debian:buster

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install mariadb-client php-fpm php-mysql curl -y \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \  
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp \
	&& mkdir -p /var/www/html/inception \
	&& chown -R www-data:www-data /var/www/html/inception \
	&& chmod 755 /var/www/html/inception

COPY ./tools/www.conf etc/php/7.3/fpm/pool.d/www.conf

RUN	 wp core download --path=/var/www/html/inception --locale=fr_FR --allow-root

COPY ./tools/wp_init.sh /tmp/wp_init.sh

ENTRYPOINT [ "sh", "/tmp/wp_init.sh" ]

