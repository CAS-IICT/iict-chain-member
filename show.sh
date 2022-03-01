#!/bin/bash -u

. ./.env

echo "Stopping Memeber"
echo "----------------------------------"

docker-compose down -v
