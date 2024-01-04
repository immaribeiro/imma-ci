#!/bin/bash

# Create the network for all CI/CD containers
docker network create ci-network
docker compose up -d --build

# Create Sonarqube volumes
# docker volume create --name sonarqube_data
# docker volume create --name sonarqube_logs
# docker volume create --name sonarqube_extensions

# Required by Sonarqube's ElasticSearch
# sudo sysctl -w vm.max_map_count=524288
# sudo sysctl -w fs.file-max=131072
# ulimit -n 131072
# ulimit -u 8192