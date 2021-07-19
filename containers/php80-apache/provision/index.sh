#!/bin/bash

cd `dirname $0`

provision-php-ini.sh
provision-apache2-conf.sh

echo 'Configuration files are set. Please restart container. (eg) "docker restart CONTAINER_NAME".'