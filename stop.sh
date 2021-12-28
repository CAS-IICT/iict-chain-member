#!/bin/bash -u

. ./.env

echo "Stopping Memeber"
echo "----------------------------------"

docker-compose -f docker-compose-member.yml down -v
