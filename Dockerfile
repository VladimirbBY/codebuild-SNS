FROM nginx:alpine


COPY ./SSL/fullchain.pem /etc/letsencrypt/live/vlhost.duckdns.org/fullchain.pem

COPY ./SSL/privkey.pem /etc/letsencrypt/live/vlhost.duckdns.org/privkey.pem

ADD ./SSL/options-ssl-nginx.conf /etc/letsencrypt/options-ssl-nginx.conf

ADD ./SSL/ssl-dhparams.pem /etc/letsencrypt/ssl-dhparams.pem


COPY ./default.conf /etc/nginx/conf.d

COPY ./nginx.conf /etc/nginx


COPY ./123.mp3 /usr/share/nginx/html

COPY ./index.html /usr/share/nginx/html

COPY ./image1.jpg /usr/share/nginx/html

COPY ./image2.png /usr/share/nginx/html

COPY ./content.html /usr/share/nginx/html

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]



EXPOSE 80
