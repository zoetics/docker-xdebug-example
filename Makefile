up:
	docker-compose up -d --build
.PHONY: up

down:
	docker-compose down
.PHONY: down

NAME=docker-xdebug-example_ssh_1
get-ssh-key:
	docker cp $(NAME):/root/.ssh/id_rsa ./
.PHONY: get-ssh-key