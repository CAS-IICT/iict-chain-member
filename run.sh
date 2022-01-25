#!/bin/bash

. ./.env

# create log files
if [ ! -d logs ]; then
    mkdir -p logs/besu logs/tessera
    chmod -R 0777 logs
fi

if [ ! -d data ]; then
    mkdir data
    chmod -R 0777 data
fi

#echo "Starting Member Peer......"
docker-compose up -d
