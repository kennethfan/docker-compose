#!/bin/bash

for port in `seq 6391 6396`
do
	role=m
	if [ $port -le 6393 ]
	then
		role=m
	else 
		role=s
	fi
	rm -rf ./redis-${role}${port}/
	mkdir -p ./redis-${role}${port}/conf
	sed "s/\${PORT}/${port}/g" redis-cluster.tmpl > ./redis-${role}${port}/conf/redis.conf 
	mkdir -p ./redis-${role}${port}/data
done
