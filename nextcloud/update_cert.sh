#!/bin/bash
docker-compose start certbot
sleep 60
docker-compose restart nginx-proxy
