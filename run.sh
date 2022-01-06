#!/bin/bash

. ./.env

# create log files
mkdir -p logs/besu logs/tessera

#echo "Starting Member Peer......"
docker-compose up -d
