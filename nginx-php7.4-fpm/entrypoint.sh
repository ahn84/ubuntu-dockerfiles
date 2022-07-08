#!/bin/bash

ROOT=${DOCUMENT_ROOT:=/www}

sed -i "s|root /www;|root $DOCUMENT_ROOT;|" /etc/nginx/sites-available/default
service php7.4-fpm start
nginx
