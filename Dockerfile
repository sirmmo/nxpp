FROM nginx:alpine
LABEL org.label-schema.schema-version = "1.0"
LABEL org.label-schema.version="1.0.0"
LABEL org.label-schema.vcs-url = "https://github.com/sirmmo/ngpp"
LABEL org.label-schema.description = "Nginx Proxy Pass for usage in traefik setups"
LABEL org.label-schema.docker.params = "FORWARD=Address to which to proxy pass"
COPY nginx.conf /etc/nginx/templates/default.conf.template
run chmod 777 /etc/nginx/templates/default.conf.template