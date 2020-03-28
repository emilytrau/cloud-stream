FROM node:13

RUN npm install -g serve

COPY obs-tablet-remote /app
WORKDIR /app
RUN npm install --ignore-scripts
RUN npm run build -- --homepage /

EXPOSE 5000
CMD [ "/usr/local/bin/serve", "-l", "tcp://0.0.0.0:5000", "/app/dist" ]
