#!/bin/bash

# Required by Sonarqube's ElasticSearch
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
ulimit -n 131072
ulimit -u 8192