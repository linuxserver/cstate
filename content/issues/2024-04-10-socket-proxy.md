---
title: 'New Container: Socket Proxy'
date: '2024-04-10 22:00:00Z'
informational: true
affected:
  - 'New Containers'
  - 'socket-proxy'
section: 'issue'
---

We have released a new container for [Socket Proxy](https://github.com/linuxserver/docker-socket-proxy/)!

The Socket Proxy container is based on [this image from Tecnativa](https://github.com/Tecnativa/docker-socket-proxy) and provides a security-enhanced proxy for containers that need to access the Docker Socket on your host.

Our image uses nginx rather than haproxy and was created because the original dev team no longer have the resources to dedicate to properly supporting their image. Given the security-related nature of the container we consider it important that there remains a supported and up to date alternative.
