---
title: TVheadend 32-bit ARM Deprecation Notice
date: '2023-02-25 18:00:00Z'
informational: true
affected:
  - Deprecations
  - tvheadend
section: issue
---

Due to build issues on 32-bit ARM, we are deprecating the 32-bit ARM (armhf) version of our [TVheadend container](https://github.com/linuxserver/docker-tvheadend).

The last supported tags for 32-bit ARM will be `02987438-ls151`.

If you are currently running the TVheadend image on a 32-bit ARM platform we recommend you look at alternative options such as upgrading to a 64-bit OS if your hardware supports it. Please see our [blog post](https://www.linuxserver.io/blog/end-of-an-arch) regarding our support policy for armhf.
