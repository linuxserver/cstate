#!/bin/bash

port=1313

echo "Starting..."
docker run --rm --name hugo-builder -d -v $(pwd):/cstate -e PUID=$(id -u) -e PGID=$(id -g) -p ${port}:${port} ghcr.io/linuxserver/baseimage-alpine-nginx:3.22 >/dev/null
docker exec -it hugo-builder apk add go git >/dev/null
docker exec -it hugo-builder wget https://github.com/gohugoio/hugo/releases/download/v0.151.0/hugo_0.151.0_Linux-64bit.tar.gz >/dev/null
docker exec -it hugo-builder tar xf hugo_0.151.0_Linux-64bit.tar.gz >/dev/null
docker exec -it -u abc hugo-builder bash -c "cd /cstate && /hugo serve --bind 0.0.0.0 --port ${port} ${PROXY_DOMAIN+--baseURL https://${port}.${PROXY_DOMAIN} --liveReloadPort 443 --appendPort=false}"
echo "Stopping..."
docker stop hugo-builder >/dev/null
echo "Done."
