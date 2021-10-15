FROM nginx:alpine
COPY nginx.conf /etc/nginx/templates/default.conf.template
run chmod 777 /etc/nginx/templates/default.conf.template