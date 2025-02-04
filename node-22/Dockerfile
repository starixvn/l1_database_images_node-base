FROM hub.lumigame.com/docker-hub/library/node:22-alpine AS base
RUN apk upgrade \
    && npm install --global npm pnpm corepack \
    && npm upgrade --latest --global npm pnpm corepack \
    && rm -rf /var/cache/apk/* \
    && rm -rf /usr/local/share/man

