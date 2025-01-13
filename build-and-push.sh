#!/bin/bash

cd /var/build/node-base/

export DOCKER_HOST=unix:///root/dind/socket/docker.sock

for NODE_VERSION in 18 20 22; do
  echo $NODE_VERSION
  docker pull hub.lumigame.com/docker-hub/library/node:${NODE_VERSION}-alpine
  docker build --file node-${NODE_VERSION}/Dockerfile --tag hub.lumigame.com/ldb/node-base:${NODE_VERSION} node-${NODE_VERSION}
  docker push hub.lumigame.com/ldb/node-base:${NODE_VERSION}
done


