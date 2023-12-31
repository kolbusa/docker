#!/bin/bash
docker pull nextcloud:latest
docker-compose stop nextcloud
docker-compose up --build -d nextcloud
sleep 600
docker exec -it -u www-data nextcloud_nextcloud_1 /var/www/html/occ upgrade
docker exec -it -u www-data nextcloud_nextcloud_1 /var/www/html/occ db:add-missing-indices
