up:
	docker-compose up -d

init: down pull build up composer-install

composer-install:
	docker exec manager-php-fpm composer install

down:
	docker-compose down --remove-orphans

down-clear:
	docker-compose down -v --remove-orphans

pull:
	docker-compose pull

build:
	docker-compose build

bash:
	docker exec -ti manager-php-fpm bash