COMPOSE			=	docker compose
COMPOSE_FILE	=	./srcs/docker-compose.yml

all:	up

up	:
		$(COMPOSE) -f $(COMPOSE_FILE) up -d

down :
		$(COMPOSE) -f $(COMPOSE_FILE) down

clean :
		$(COMPOSE) -f $(COMPOSE_FILE) down -v

fclean	: clean
		docker image rmi nginx:custom
		docker image rmi wordpress:custom
		docker image rmi mariadb:custom

logs:
		$(COMPOSE) -f $(COMPOSE_FILE) logs

re	: fclean all

.PHONY	:	all up down clean fclean logs re
