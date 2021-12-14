logs:
	docker-compose logs -f app

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose down --remove-orphans

build:
	docker-compose build --pull
	docker-compose push

shell:
	docker-compose exec app bash

shell-postgres:
	docker-compose exec postgres bash

use-dev:
	rm -rf .env
	ln -s .envs/dev.env .env

use-test:
	rm -rf .env
	ln -s .envs/test.env .env

run-test:
	docker-compose run app
