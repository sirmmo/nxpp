# NXPP

to use in traefik: 



    services:
        proxy:
            image: sirmmo/nxpp
            networks:
            - traefik
            - default
            restart: always
            deploy:
            replicas: 1
            labels:
                - "traefik.enable=true"
                - "traefik.docker.network=traefik"
                - "traefik.http.routers.ingmmo-code.rule=Host(`proxy.example.com`)"
                - "traefik.http.routers.ingmmo-code.entrypoints=web-secure"
                - "traefik.http.routers.ingmmo-code.tls.certresolver=certificato"
                - "traefik.http.services.ingmmo-code-svc.loadbalancer.server.port=80"
            environment:
            - FORWARD=http://somemachine:8080