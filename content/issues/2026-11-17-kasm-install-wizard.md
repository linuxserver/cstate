---
title: 'Kasm - Functional Changes'
date: '2026-11-17 23:00:00Z'
informational: true
affected:
  - 'kasm'
section: 'issue'
---

We have published a functional update to our [Kasm](https://github.com/linuxserver/docker-kasm) image that changes the behaviour of the install wizard to close a potential security gap. Going forward, the install wizard will be disabled after initial install unless you explicitly opt-in via environment variable, which will be required for performing upgrades of the Kasm software. These changes are reflected in the [image readme](https://github.com/linuxserver/docker-kasm/blob/master/README.md). As part of general security good practices, you should never publicly expose the install wizard port.
