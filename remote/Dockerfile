FROM node:13

ARG homepage=/

RUN npm install -g serve

COPY obs-tablet-remote /app
WORKDIR /app
RUN npm install --ignore-scripts
RUN BUILD_HOMEPAGE="$homepage" npm run build

COPY serve.json /serve.json

EXPOSE 5000
CMD [ "/usr/local/bin/serve", "-l", "tcp://0.0.0.0:5000", "-c", "/serve.json" ]
