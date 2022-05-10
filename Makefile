default:
	@echo 'Enter command'

init: down update
update: up

down:
	docker compose down -v

up:
	docker compose up -d --build

composer5.6-i:
	docker compose run --rm php5.6-cli composer i
	docker compose run --rm php5.6-cli rm composer.lock
composer5.6-u:
	docker compose run --rm php5.6-cli composer u
	docker compose run --rm php5.6-cli rm composer.lock

composer7.2-i:
	docker compose run --rm php7.2-cli composer i
	docker compose run --rm php5.6-cli rm composer.lock
composer7.2-u:
	docker compose run --rm php7.2-cli composer u
	docker compose run --rm php5.6-cli rm composer.lock

composer7.4-i:
	docker compose run --rm php7.4-cli composer i
	docker compose run --rm php5.6-cli rm composer.lock
composer7.4-u:
	docker compose run --rm php7.4-cli composer u
	docker compose run --rm php5.6-cli rm composer.lock

composer8.1-i:
	docker compose run --rm php8.1-cli composer i
	docker compose run --rm php5.6-cli rm composer.lock
composer8.1-u:
	docker compose run --rm php8.1-cli composer u
	docker compose run --rm php5.6-cli rm composer.lock
