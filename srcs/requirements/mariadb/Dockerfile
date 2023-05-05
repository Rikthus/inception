FROM debian:buster

ARG DB_NAME
ARG DB_ROOT_PWD
ARG DB_USER
ARG DB_USER_PWD

RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install -y mariadb-server \
	&& service mysql start \
	&& mysql -u root -e \
		# "CREATE DATABASE $DB_NAME;" \
		# ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PWD'; \
		# GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost' IDENTIFIED BY '$DB_USER_PWD'; \
		# FLUSH PRIVILEGES; \
	# && service mysql restart
		"CREATE DATABASE ${DB_NAME}; \
		ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PWD}'; \
		GRANT ALL PRIVILEGES ON $DB_NAME.* TO '${DB_USER}'@'localhost' IDENTIFIED BY '$DB_USER_PWD'; \
		FLUSH PRIVILEGES;" \
	&& service mysql restart

ENTRYPOINT ["mysqld", "--bind-address=0.0.0.0"]