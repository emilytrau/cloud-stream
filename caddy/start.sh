#!/bin/sh
if [ "$PRODUCTION" = "true" ]
then
  export TLS_POLICY=""
else
  export TLS_POLICY="tls self_signed"
fi
envsubst '${TLS_POLICY}' < /app/Caddyfile.template > /etc/Caddyfile

/bin/parent caddy $@