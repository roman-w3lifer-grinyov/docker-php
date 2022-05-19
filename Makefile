default:
	@echo 'Enter command'

# ----------------------------------------------------------------------------------------------------------------------

init: down up composer8.1-i

# ----------------------------------------------------------------------------------------------------------------------

down:
	docker compose down -v --remove-orphans
up:
	docker compose up -d --build --remove-orphans

remove-composer.lock:
	docker compose run --rm php8.0-cli rm -f composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer5.6-i:
	docker compose run --rm php5.6-cli composer i
	make remove-composer.lock
composer5.6-u:
	docker compose run --rm php5.6-cli composer u
	make remove-composer.lock
composer5.6-req:
	docker compose run --rm php5.6-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer7.0-i:
	docker compose run --rm php7.0-cli composer i
	make remove-composer.lock
composer7.0-u:
	docker compose run --rm php7.0-cli composer u
	make remove-composer.lock
composer7.0-req:
	docker compose run --rm php7.0-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer7.1-i:
	docker compose run --rm php7.1-cli composer i
	make remove-composer.lock
composer7.1-u:
	docker compose run --rm php7.1-cli composer u
	make remove-composer.lock
composer7.1-req:
	docker compose run --rm php7.1-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer7.2-i:
	docker compose run --rm php7.2-cli composer i
	make remove-composer.lock
composer7.2-u:
	docker compose run --rm php7.2-cli composer u
	make remove-composer.lock
composer7.2-req:
	docker compose run --rm php7.2-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer7.3-i:
	docker compose run --rm php7.3-cli composer i
	make remove-composer.lock
composer7.3-u:
	docker compose run --rm php7.3-cli composer u
	make remove-composer.lock
composer7.3-req:
	docker compose run --rm php7.3-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer7.4-i:
	docker compose run --rm php7.4-cli composer i
	make remove-composer.lock
composer7.4-u:
	docker compose run --rm php7.4-cli composer u
	make remove-composer.lock
composer7.4-req:
	docker compose run --rm php7.4-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer8.0-i:
	docker compose run --rm php8.0-cli composer i
	make remove-composer.lock
composer8.0-u:
	docker compose run --rm php8.0-cli composer u
	make remove-composer.lock
composer8.0-req:
	docker compose run --rm php8.0-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------

composer8.1-i:
	docker compose run --rm php8.1-cli composer i
	make remove-composer.lock
composer8.1-u:
	docker compose run --rm php8.1-cli composer u
	make remove-composer.lock
composer8.1-req:
	docker compose run --rm php8.1-cli composer req
	make remove-composer.lock

# ----------------------------------------------------------------------------------------------------------------------
