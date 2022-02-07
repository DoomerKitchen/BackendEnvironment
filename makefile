run: 
	chmod +x ./init-letsencrypt.sh ;
	./init-letsencrypt.sh ${DOMAIN} ${EMAIL};
start:
	chmod +x ./start.sh ;
	./start.sh;
key: 
	docker-compose exec php artisan key:generate
install:
	docker-compose exec backend composer install
migrate: 
	docker-compose exec backend php /var/www/artisan migrate --seed