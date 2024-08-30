#!/bin/bash

sh $(dirname $0)/network.sh

docker-compose -f docker-compose.yml up -d
