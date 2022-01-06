run: 
	chmod +x ./init-letsencrypt.sh ;
	./init-letsencrypt.sh ${DOMAIN} ${EMAIL};
key: 
	docker-compose exec backend php artisan key:generate
install:
	docker-compose exec backend composer install
migrate: 
	docker-compose exec backend php /var/www/artisan migrate --seed