#!/bin/bash

h6391=$(docker inspect redis-m6391 | grep IPAddress| tail -1 | awk '{print $2}'|awk -F '"' '{print $2}')
h6392=$(docker inspect redis-m6392 | grep IPAddress| tail -1 | awk '{print $2}'|awk -F '"' '{print $2}')
h6393=$(docker inspect redis-m6393 | grep IPAddress| tail -1 | awk '{print $2}'|awk -F '"' '{print $2}')
h6394=$(docker inspect redis-s6394 | grep IPAddress| tail -1 | awk '{print $2}'|awk -F '"' '{print $2}')
h6395=$(docker inspect redis-s6395 | grep IPAddress| tail -1 | awk '{print $2}'|awk -F '"' '{print $2}')
h6396=$(docker inspect redis-s6396 | grep IPAddress| tail -1 | awk '{print $2}'|awk -F '"' '{print $2}')

echo "docker exec -it redis-m6391 /usr/local/bin/redis-cli --cluster create ${h6391}:6391 ${h6392}:6392 ${h6393}:6393 ${h6394}:6394 ${h6395}:6395 ${h6396}:6396 --cluster-replicas 1 -a 123456"
docker exec -it redis-m6391 /usr/local/bin/redis-cli --cluster create ${h6391}:6391 ${h6392}:6392 ${h6393}:6393 ${h6394}:6394 ${h6395}:6395 ${h6396}:6396 --cluster-replicas 1 -a 123456

sleep 5

sh monitor.sh
