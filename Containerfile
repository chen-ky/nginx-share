FROM docker.io/library/nginx:stable-alpine-slim

LABEL org.opencontainers.image.source="https://github.com/chen-ky/nginx-share/"
LABEL org.opencontainers.image.licenses="MIT"

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.default

COPY conf/ /etc/nginx/conf.d/

VOLUME ["/usr/share/nginx/html"]
