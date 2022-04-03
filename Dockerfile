# start from base
FROM nginx:1.21.6-alpine

#configuration
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./*.html /usr/share/nginx/html/