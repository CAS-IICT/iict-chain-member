#!/bin/bash

. ./.env

# create log files
mkdir -p logs/besu logs/tessera
chmod -R 0777 logs
chmod -R 0777 data

#echo "Starting Member Peer......"
docker-compose up -d
