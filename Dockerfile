FROM nginx:1.23.3-alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf * \
&& wget https://github.com/mayswind/AriaNg/releases/download/1.3.2/AriaNg-1.3.2.zip -O AriaNg.zip \
&& unzip AriaNg.zip \
&& rm -f AriaNg.zip
