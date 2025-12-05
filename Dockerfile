FROM caddy:latest

COPY Caddyfile /etc/caddy/Caddyfile
RUN mkdir /sites