up:
	docker-compose up -d

init: down pull build up manager-init

manager-init: manager-composer-install

manager-composer-install:
	docker-compose exec manager-php-fpm composer install

down:
	docker-compose down --remove-orphans

pull:
	docker-compose pull

build:
	docker-compose build

bash:
	docker exec -ti manager-php-fpm bash