FROM nginx:1.16.1-alpine

COPY ./src/main/resources/static /usr/share/nginx/html
COPY ./frontend-nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
