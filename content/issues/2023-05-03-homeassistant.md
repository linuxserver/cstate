---
title: Home Assistant 32-bit ARM Deprecation Notice
date: '2023-05-03 18:00:00Z'
informational: true
affected:
  - Deprecations
  - homeassistant
section: issue
---

Due to build issues on 32-bit ARM, we are deprecating the 32-bit ARM (armhf) version of our [Home Assistant container](https://github.com/linuxserver/docker-homeassistant).

The last supported tags for 32-bit ARM will be `2023.4.6-ls141`.

If you are currently running the Home Assistant image on a 32-bit ARM platform we recommend you look at alternative options such as upgrading to a 64-bit OS if your hardware supports it. Please see our [blog post](https://www.linuxserver.io/blog/a-farewell-to-arm-hf) regarding our support policy for armhf.
