Laravel - React - Services

sudo service apache2 start/stop
stop apache server ubuntu

docker-compose.yml  with  php 8 , mysql , phpmyadmin and nginx config file with multiple replictes urls config	

docker-compose up --scale nginx=5 -d

docker-compose pull
docker-compose up --force-recreate --build -d
docker image prune -f
docker compose up -d --remove-orphans

#For Import Database - sudo docker exec -i laraveldoc-mysql-1 mysql -u app_user -papp_password app_db < /var/www/html/db.sql;

sudo chmod -R 775 storage bootstrap/cache


php artisan cache:clear
php artisan route:clear
php artisan config:clear
php artisan view:clear
php artisan clear-compiled


php artisan config:cache
php artisan optimize


ls -l /var/www/html/storage