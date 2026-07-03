---
title: 'New Container: doplarr_rs and Deprecation of our original doplarr image'
date: '2026-07-04 21:00:00Z'
informational: true
affected:
  - 'New Containers'
  - 'doplarr_rs'
  - 'Deprecations'
  - 'doplarr'
section: 'issue'
---
We have released a new container for [doplarr_rs](https://github.com/linuxserver/docker-doplarr_rs)!

[doplarr_rs](https://github.com/activexray/doplarr_rs) is a Discord bot for requesting media through *arr backends, written in Rust.

Our original [doplarr](https://github.com/linuxserver/docker-doplarr) image is being deprecated in favor of the new image. The original image used environment variables for configuration and did not make use of a `/config` volume or have any config files. The new image requires a `/config` volume and will create a default config file for you if one does not exist. You will need to populate the new config file based on the setup instructions at [doplarr_rs](https://github.com/activexray/doplarr_rs).
