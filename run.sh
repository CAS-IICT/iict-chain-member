#!/bin/bash

read -p "Input your domain [Default: http://localhost]: " domain

if [ "$domain" = "" ]; then
    domain="DOMAIN=http://localhost"
fi

echo "DOMAIN=$domain" >> ./.env

. ./.env

# create log files
mkdir -p logs/besu logs/quorum logs/tessera

#echo "Starting Member Peer......"
docker-compose -f docker-compose-member.yml up -d
