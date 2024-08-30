#!/bin/bash

network=$(docker network ls | grep network | grep -v grep | wc -l)
if [ $network -eq 0 ]; then
	echo "docker network create -d bridge --subnet=172.16.0.0/16 extnetwork"
	docker network create -d bridge --subnet=172.16.0.0/16 extnetwork
fi
