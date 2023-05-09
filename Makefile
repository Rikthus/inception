COMPOSE			=	docker-compose
COMPOSE_FILE	=	./srcs/docker-compose.yml
PROJECT			=	srcs

all:	up

up	:
		$(COMPOSE) -f $(COMPOSE_FILE) up -d

down :
		$(COMPOSE) -f $(COMPOSE_FILE) down

clean :
		$(COMPOSE) -f $(COMPOSE_FILE) down -v
		# docker network rm $(PROJECT)_inception

fclean	: clean
		docker image rmi my-mariadb:custom
		docker image rmi my-wordpress:custom

logs:
		$(COMPOSE) -f $(COMPOSE_FILE) logs

re	: fclean all

.PHONY	:	all up down clean fclean logs re
