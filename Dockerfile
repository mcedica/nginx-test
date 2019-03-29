FROM nginxbase:latest
USER root
RUN sed -i "s:location / {:location /test {:"  /etc/opt/rh/rh-nginx112/nginx/nginx.conf
RUN sed -i "s:# Load configuration files for the default server block.:ignore_invalid_headers off;:"  /etc/opt/rh/rh-nginx112/nginx/nginx.conf
RUN cat /etc/opt/rh/rh-nginx112/nginx/nginx.conf
ADD nginx-proxy.conf /opt/app-root/etc/nginx.default.d/nginx-proxy.conf
USER 1001