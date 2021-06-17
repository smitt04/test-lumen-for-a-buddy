COMPOSE := docker-compose -f docker/docker-compose.yaml -p lumen

.PHONY: composer
composer:
	docker run --rm --interactive --tty --volume $(PWD)/my-app:/app composer $(ARGS)

install:
	$(MAKE) composer ARGS="install"

dev: install
	$(COMPOSE) up $(ARGS)