# mysql master slave cluster
create a mysql master-slave cluster with docker compose quickly
使用docker compose快速启动mysql主从集群

# QUICK START
## start service
start service
```bash
make start
```

init service if first
```bash
mysql -uroot -h127.0.0.1 -p123456 -P13306 < master_init.sql

mysql -uroot -h127.0.0.1 -p123456 -P23306 < slave_init.sql
```

## stop service
```bash
make stop
```

## restart service
```bash
make restart
```
