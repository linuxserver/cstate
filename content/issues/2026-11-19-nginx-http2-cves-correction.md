---
title: 'Correction: nginx HTTP/2 CVEs'
date: '2026-11-19 18:00:00Z'
informational: true
affected:
  - Vulnerabilities
section: issue
---

Our [earlier post on the nginx HTTP/2 CVEs](https://info.linuxserver.io/issues/2026-11-19-nginx-http2-cves/) originally said that none of our images enable HTTP/2 by default. That was wrong, and we apologise for the confusion.

The default `nginx.conf` in our Alpine nginx base image has included `http2 on;` at the `http` level since May 2024. That base image is used by SWAG, nginx and the many web apps built on top of them (BookStack, Nextcloud, FreshRSS, Heimdall and others). So if your `/config/nginx/nginx.conf` was generated from our sample, HTTP/2 is enabled for every server block and you **are** exposed to these vulnerabilities. These images have already been rebuilt with the fixed nginx package (see the list in the original post), so **update to the latest image**.

The Debian, Ubuntu, Fedora and Kali based images are the Selkies GUI images (webtop and our other desktop apps). Their nginx config does not enable HTTP/2, and it is regenerated from the image defaults every time the container starts, so they are not exposed even though their distros have not shipped a fixed nginx yet.

`projectsend:latest` has now also been rebuilt with the fixed nginx, so update it as well.

`diskover` is based on Alpine 3.20, which has no fixed nginx package, and the image is currently looking for a maintainer, so we can't give a timeline for moving it to a newer base. Instead, `diskover:latest` now disables HTTP/2 for both new and existing installs: the first time the updated image starts, it changes `http2 on;` to `http2 off;` in `/config/nginx/nginx.conf`. Update to the latest image, and if you have set `http2 on;` in any of your own site confs, remove it.
