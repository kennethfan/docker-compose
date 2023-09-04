#!/bin/bash

mkdir -p master/var/lib/mysql
mkdir -p slave/var/lib/mysql

docker-compose -f docker-compose.yml up -d
