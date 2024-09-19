DOCKER_STACK_NAME := swarmlibs
DOCKER_STACK_COMPOSE_FILE := docker-stack.yml
make:
	@docker stack config -c $(DOCKER_STACK_COMPOSE_FILE)
deploy:
	@docker stack deploy -c $(DOCKER_STACK_COMPOSE_FILE) $(DOCKER_STACK_NAME)
upgrade:
	@docker stack deploy --prune -c $(DOCKER_STACK_COMPOSE_FILE) $(DOCKER_STACK_NAME)
remove:
	@docker stack rm $(DOCKER_STACK_NAME)
