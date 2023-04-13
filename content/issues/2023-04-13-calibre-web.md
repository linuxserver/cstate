---
title: Calibre-Web 32-bit ARM Deprecation Notice
date: '2023-04-13 20:00:00Z'
informational: true
affected:
  - Deprecations
  - calibre-web
section: issue
---

Due to issues building required dependencies on 32-bit Arm, we have taken the decision to deprecate the 32-bit Arm (armhf) version of our [Calibre-Web image](https://github.com/linuxserver/docker-calibre-web).

The last supported tag for 32-bit Arm will be `0.6.20-ls204` for the stable branch and `nightly-6c6841f8-ls67` for nightly.

If you are currently running the Calibre-Web image on a 32-bit Arm platform we recommend you look at alternative options such as upgrading to a 64-bit OS if your hardware supports it. Please see our [blog post](https://www.linuxserver.io/blog/a-farewell-to-arm-hf) regarding our support policy for armhf.
