---
title: 'SWAG Auto Reload Changes'
date: '2025-01-19 22:00:00Z'
informational: true
affected:
  - 'mods'
  - 'swag'
section: issue
---

Due to the popularity of the [SWAG Auto Reload mod](https://github.com/linuxserver/docker-mods/tree/swag-auto-reload) we have decided to integrate the functionality into the [SWAG image](https://github.com/linuxserver/docker-swag).

From today's SWAG release you can set an environment variable of `SWAG_AUTORELOAD=true` to automatically reload your nginx config whenever a change is made to a .conf file. Please see the README for more information.

If you are using the SWAG Auto Reload mod then please consider switching to the built-in functionality as we will no longer be providing support or updates for the mod.
