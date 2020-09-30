FROM nginx:1.19.2-alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf * \
&& wget https://github.com/mayswind/AriaNg/releases/download/1.1.7/AriaNg-1.1.7.zip \
&& unzip AriaNg-1.1.7.zip \
&& rm -f AriaNg-1.1.7.zip