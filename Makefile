logs:
	sudo docker-compose logs -f app

up:
	sudo docker-compose up -d --remove-orphans

down:
	sudo docker-compose down --remove-orphans

build:
	sudo docker-compose build --pull
	sudo docker-compose push

shell:
	sudo docker-compose exec app bash

shell-postgres:
	sudo docker-compose exec postgres bash

use-dev:
	rm -rf .env
	ln -s .envs/dev.env .env

use-test:
	rm -rf .env
	ln -s .envs/test.env .env

use-traefik:
	rm -rf .env
	ln -s .envs/traefik.env .env

run-test:
	sudo docker-compose run app
