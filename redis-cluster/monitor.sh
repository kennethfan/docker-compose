#!/bin/bash

echo "docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 ping"
docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 ping

echo "docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 cluster nodes"
docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 cluster nodes

echo "docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 cluster slots"
docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 cluster slots

echo "docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 cluster info"
docker exec -it redis-m6391 /usr/local/bin/redis-cli -h 127.0.0.1 -p 6391 -a 123456 cluster info
