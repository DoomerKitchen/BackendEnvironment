run: 
	chmod +x ./init-letsencrypt.sh ;
	./init-letsencrypt.sh ${DOMAIN} ${EMAIL};
migrate: 
	docker-compose exec backend php /var/www/artisan migrate --seed