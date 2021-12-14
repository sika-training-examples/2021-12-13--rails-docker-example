up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build --pull
	docker-compose push

shell:
	docker-compose exec app bash

use-dev:
	rm -rf .env
	ln -s .envs/dev.env .env
