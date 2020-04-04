FROM angustrau/obs

# Install obs-websocket plugin
RUN add-pkg wget && \
    wget -O obs-websocket.deb https://github.com/Palakis/obs-websocket/releases/download/4.7.0/obs-websocket_4.7.0-1_amd64.deb && \
    dpkg -i obs-websocket.deb && \
    rm obs-websocket.deb

COPY whitrabt/whitrabt.ttf /usr/share/fonts
RUN fc-cache
