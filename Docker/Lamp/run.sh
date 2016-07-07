#!/bin/bash

MYSQL_PASS="admin123"
MYSQL_PORT="60036"

WWW_PORT="8888"

script_path=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $script_path

docker run --name lamp \
         -v $script_path/www:/var/www/html \
         -p $WWW_PORT:80    \
         -p $MYSQL_PORT:3306    \
         -e MYSQL_PASS="${MYSQL_PASS}" \
         -d tutum/lamp

echo -e "
========================================================================
Navegate to:

    http://localhost:${WWW_PORT}

========================================================================
You can connect to this MySQL Server using:

    mysql -uadmin -p${MYSQL_PASS} -P${MYSQL_PORT} -h127.0.0.1

========================================================================
"
