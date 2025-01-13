FROM hub.lumigame.com/docker-hub/library/node:18-alpine AS base
RUN apk upgrade \
    && npm install --global npm pnpm \
    && npm upgrade --latest --global npm pnpm \
    && rm -rf /var/cache/apk/* \
    && rm -rf /usr/local/share/man

