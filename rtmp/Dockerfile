FROM tiangolo/nginx-rtmp

RUN apt-get update && apt-get install -y gettext
COPY app /app
CMD [ "/app/start.sh" ]
