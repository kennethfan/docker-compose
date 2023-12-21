# redis cluster
create a redis cluster with docker compose quickly
使用docker compose快速启动redis cluster集群

# QUICK START
## start service
init config
```bash
sh redis-config.sh
```

start service
```bash
make start
```

init service if first
```bash
sh init.sh
```

## stop service
```bash
make stop
```
## restart service
```bash
make restart
```

## cluster info
```bash
sh monitor.sh
```
