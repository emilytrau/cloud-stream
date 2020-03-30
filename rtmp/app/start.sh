#!/bin/sh
envsubst '${AUTH_USER} ${AUTH_PASS}' < /app/nginx.conf.template > /etc/nginx/nginx.conf
nginx -g "daemon off;"