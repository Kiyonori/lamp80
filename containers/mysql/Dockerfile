FROM mysql:8.0.11

COPY conf/my.cnf            /etc/mysql/my.cnf
COPY conf/conf.d/mysql.cnf  /etc/mysql/conf.d/mysql.cnf
COPY conf/conf.d/docker.cnf /etc/mysql/conf.d/docker.cnf

RUN chmod 640 /etc/mysql/my.cnf \
&&  chmod 640 /etc/mysql/conf.d/mysql.cnf \
&&  chmod 640 /etc/mysql/conf.d/docker.cnf \
\
&&  mkdir -p  /var/log/mysql \
&&  touch     /var/log/mysql/slow.log \
&&  touch     /var/log/mysql/mysqld.log \
&&  chmod 640 /var/log/mysql/slow.log \
&&  chmod 640 /var/log/mysql/mysqld.log \
\
&&  mkdir -p /var/lib/mysql-files

ARG MYSQL_USER
ARG MYSQL_PASSWORD

RUN { \
    echo "ALTER USER '${MYSQL_USER}'@'%' IDENTIFIED WITH mysql_native_password BY '${MYSQL_PASSWORD}';"; \
} > ./docker-entrypoint-initdb.d/user_init.sql