---
title: qBittorrent change to Alpine
date: 2022-01-07 18:00:00Z
informational: true
affected:
  - Deprecations
  - qbittorrent
section: issue
---

Due to the upstream project dropping support for Ubuntu LTS (Focal) in their most recent release (v4.4.0) we have decided to switch our qBittorrent container to our Alpine baseimage. We apologise for the short notice but we didn't have sufficient information from the upstream project to make these decisions in advance.

If you need to stay on the existing Ubuntu-based image with v4.3.9 of qBittorrent you may pin your install to the `version-14.3.9.99202110311443-7435-01519b5e7ubuntu20.04.1` tag. **Please be aware that this image will not receive any further updates.**

This change should not affect most users, however, if you rely on custom scripts or 3rd party packages you may need to make changes to ensure they continue to function as before. 

Additionally - if you make use of the `qbt` CLI tool - as part of this change we have switched from using [https://github.com/fedarovich/qbittorrent-cli](https://github.com/fedarovich/qbittorrent-cli), which does not provide Alpine-compatible binaries, to [https://github.com/ludviglundgren/qbittorrent-cli](https://github.com/ludviglundgren/qbittorrent-cli) which does. While these tools are very similar in function, the syntax differs between them.
