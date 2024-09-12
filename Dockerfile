FROM nginx:1.27.1-alpine

WORKDIR /usr/share/nginx/html

ENV ARIA2_ADDRESS=http://localhost:6800/jsonrpc

RUN rm -rf * \
    && wget https://github.com/mayswind/AriaNg/releases/download/1.3.7/AriaNg-1.3.7.zip -O AriaNg.zip \
    && unzip AriaNg.zip \
    && rm -f AriaNg.zip

COPY templates/ /etc/nginx/templates/