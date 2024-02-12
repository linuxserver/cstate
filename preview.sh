#!/bin/bash

echo "Starting..."
docker run --rm --name hugo-builder -d -v $(pwd):/cstate -e PUID=$(id -u) -e PGID=$(id -g) -p 1313:1313 ghcr.io/linuxserver/baseimage-alpine-nginx:3.19 >/dev/null
docker exec -it hugo-builder apk add go git >/dev/null
docker exec -it hugo-builder wget https://github.com/gohugoio/hugo/releases/download/v0.100.2/hugo_0.100.2_Linux-64bit.tar.gz >/dev/null
docker exec -it hugo-builder tar xf hugo_0.100.2_Linux-64bit.tar.gz >/dev/null
docker exec -it -u abc hugo-builder bash -c "cd /cstate && /hugo serve --bind 0.0.0.0"
echo "Stopping..."
docker stop hugo-builder >/dev/null
echo "Done."
