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