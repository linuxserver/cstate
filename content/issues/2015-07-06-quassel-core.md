---
title: 'New Container: Quassel-Core'
date: '2015-07-06'
informational: true
affected:
  - 'New Containers'
  - 'quassel-core'
section: 'issue'
---
We have released a new container for [Quassel-Core](https://github.com/linuxserver/docker-quassel-core)!

[Quassel-core](http://quassel-irc.org/) is a modern, cross-platform, distributed IRC client, meaning that one (or multiple) client(s) can attach to and detach from a central core.

This container handles the IRC connection (quasselcore) and requires a desktop client (quasselclient) to be used and configured. It is designed to be always on and will keep your identity present in IRC even when your clients cannot be online. Backlog (history) is downloaded by your client upon reconnection allowing infinite scrollback through time.