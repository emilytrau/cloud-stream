FROM abiosoft/caddy:no-stats

RUN apk add gettext
COPY start.sh /app/start.sh
ENTRYPOINT [ "/app/start.sh" ]
CMD ["--conf", "/etc/Caddyfile", "--log", "stdout", "--agree=$ACME_AGREE"]
