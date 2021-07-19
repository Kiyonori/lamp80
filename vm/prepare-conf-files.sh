#!/bin/sh

CURRENT_DIRECTORY=`pwd`

# [php80_apache] Prepare a dot_env from dot_env_example.
cd ${CURRENT_DIRECTORY}/../containers
if [ ! -f ".env" ]; then cp .env.example .env ; fi

# Prepare mysql conf files.
cd ${CURRENT_DIRECTORY}/../containers/mysql/conf
if [ ! -f "my.cnf" ];            then cp my.development.cnf            my.cnf ; fi
if [ ! -f "conf.d/mysql.cnf" ];  then cp conf.d/mysql.development.cnf  conf.d/mysql.cnf  ; fi
if [ ! -f "conf.d/docker.cnf" ]; then cp conf.d/docker.development.cnf conf.d/docker.cnf ; fi

# [php80_apache] Prepare a php.ini file.
cd ${CURRENT_DIRECTORY}/../containers/php80-apache/conf/usr/local/etc/php
if [ ! -f "php.ini" ]; then cp php.example.ini php.ini ; fi

# [php80_apache] Prepare a apache conf file.
cd ${CURRENT_DIRECTORY}/../containers/php80-apache/conf/etc/apache2/sites-available
if [ ! -f "000-default.conf" ]; then cp 000-default.example.conf 000-default.conf ; fi

cd $CURRENT_DIRECTORY