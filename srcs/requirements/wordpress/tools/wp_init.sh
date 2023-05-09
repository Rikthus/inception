#!bin/bash

cd /var/www/html/wp_blog
if ! wp core is-installed --allow-root
then
	wait 5
	wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_USER_PWD} --dbhost=my-mariadb
	wp core install --allow-root --url=maxperei.42.fr --title=INCEPTION_DONE --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PWD} --admin_email=maxperei@student.42lyon.fr
	wp user create --allow-root ${WP_USER} maxperei@student.42lyon.fr --user_pass=${MY_USER_PWD}
fi

mkdir -p /run/php/
php-fpm7.3 -F 
