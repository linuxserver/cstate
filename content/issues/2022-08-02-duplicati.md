---
title: Duplicati 32-bit ARM Deprecation Notice
date: '2022-08-02 22:00:00Z'
informational: true
affected:
  - Deprecations
  - duplicati
section: issue
---

Due to the lack of reliable support for Mono on 32-bit ARM, we will shortly be deprecating the 32-bit ARM (armhf) version of our [Duplicati container](https://github.com/linuxserver/docker-duplicati).

The last supported tags for 32-bit ARM will be `v2.0.6.3-2.0.6.3_beta_2021-06-17-ls135` for the stable branch and `development-v2.0.6.104-2.0.6.104_canary_2022-06-15-ls89` for the development branch.

If you are currently running the Duplicati image on a 32-bit ARM platform we recommend you look at alternative options such as upgrading to a 64-bit OS if your hardware supports it. Please see our [blog post](https://www.linuxserver.io/blog/end-of-an-arch) regarding our support policy for armhf.
