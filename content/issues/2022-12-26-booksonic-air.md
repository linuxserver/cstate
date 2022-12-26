---
title: Booksonic Air 32-bit ARM Deprecation Notice
date: '2022-12-26 12:00:00Z'
informational: true
affected:
  - Deprecations
  - booksonic-air
section: issue
---

Due to the lack of support for modern Java runtime packages on 32-bit ARM from the Alpine repos, we will shortly be deprecating the 32-bit ARM (armhf) version of our [Booksonic Air image](https://github.com/linuxserver/docker-booksonic-air).

The last supported tag for 32-bit ARM will be `v2201.1.0-ls77`.

If you are currently running the Booksonic Air image on a 32-bit ARM platform we recommend you look at alternative options such as upgrading to a 64-bit OS if your hardware supports it. Please see our [blog post](https://www.linuxserver.io/blog/end-of-an-arch) regarding our support policy for armhf.
