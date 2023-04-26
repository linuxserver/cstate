---
title: 'Notification: Changes to Wireguard image tags'
date: '2023-04-27 18:00:00Z'
informational: true
affected:
  - 'Notifications'
  - 'wireguard'
section: issue
---
We will shortly be making changes to the tags available for our [Wireguard](https://github.com/linuxserver/docker-wireguard) image.

Currently we offer two tags: `latest` and `alpine`. The former uses our Ubuntu base image and contains all of the tools and dependencies required to compile the Wireguard kernel modules from scratch if your host kernel is too old to have it built-in. The latter uses our Alpine base image and does *not* contain the build tools and dependencies, which means it will only work on hosts that already have the Wireguard kernel modules installed and running.

Almost all kernel builds since 5.6 come with Wireguard included, along with some older ones that have had it backported, which means that shipping an extra 800Mb of image to support those running old kernels is increasingly unnecessary.

As a result, we're going to switch our tags around to make the Alpine-based image the default.

* If you're currently using the `latest` tag you'll soon automatically get switched to the Alpine-based build.
* If you're currently using the `alpine` tag you'll need to switch to `latest` to continue receiving updates.
* If you're still running an old kernel and need the build support, you'll need to switch to the `legacy` tag.
