#!/bin/bash


mysql -uroot -h127.0.0.1 -P13306 -p123456 < master_init.sql;

mysql -uroot -h127.0.0.1 -P23306 -p123456 < slave_init.sql;
