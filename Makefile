COMPOSE := docker-compose -f docker/docker-compose.yaml -p lumen

.PHONY: composer
composer:
	docker run --rm --interactive --tty --volume $PWD:/app composer $(ARGS)

dev:
	$(COMPOSE) up $(ARGS)