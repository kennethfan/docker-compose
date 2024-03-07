#/bin/bash

docker exec -ti archery /bin/bash

# 表结构初始化
cd /opt/archery
source /opt/venv4archery/bin/activate
python3 manage.py makemigrations sql
python3 manage.py migrate

# 数据初始化
python3 manage.py dbshell<sql/fixtures/auth_group.sql
python3 manage.py dbshell<src/init_sql/mysql_slow_query_review.sql

# 创建管理用户
python3 manage.py createsuperuser
