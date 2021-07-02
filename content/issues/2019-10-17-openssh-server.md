---
title: 'New Container: Openssh-Server'
date: '2019-10-17'
informational: true
affected:
  - 'New Containers'
  - 'openssh-server'
section: 'issue'
---
We have released a new container for [Openssh-Server](https://github.com/linuxserver/docker-openssh-server)!

[Openssh-server](https://www.openssh.com/) is a sandboxed environment that allows ssh access without giving keys to the entire server.
Giving ssh access via private key often means giving full access to the server. This container creates a limited and sandboxed environment that others can ssh into.
The users only have access to the folders mapped and the processes running inside this container.