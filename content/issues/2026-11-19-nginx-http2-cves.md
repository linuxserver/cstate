---
title: 'nginx HTTP/2 CVEs'
date: '2026-11-19 12:00:00Z'
informational: true
affected:
  - Vulnerabilities
section: issue
---

A number of vulnerabilities have recently been disclosed in nginx ([CVE-2026-123007](https://www.cve.org/CVERecord?id=CVE-2026-123007), [CVE-2026-123633](https://www.cve.org/CVERecord?id=CVE-2026-123633), [CVE-2026-123634](https://www.cve.org/CVERecord?id=CVE-2026-123634), [CVE-2026-121810](https://www.cve.org/CVERecord?id=CVE-2026-121810) and [CVE-2026-113425](https://www.cve.org/CVERecord?id=CVE-2026-113425)), fixed upstream in nginx 1.30.7 and 1.31.9. They only affect nginx when HTTP/2 is enabled, and none of our images enable HTTP/2 out of the box, so in practice our default configurations are not exposed. If you have turned on HTTP/2 yourself, for example by adding `http2 on;` to a server block in SWAG or nginx, you should update.

We have rebuilt every affected image whose distro has shipped a fixed package anyway. At the time of writing only **Alpine 3.24** (nginx `1.30.7-r0`) and **Arch Linux** (nginx `1.30.7-1`) have published updates. Debian, Ubuntu, Fedora and Kali have not shipped a fixed nginx yet. We will rebuild the images based on them once they do, and update this post.

The images based on Selkies (webtop and our other GUI desktop apps) only use nginx internally to serve the web interface, and they never enable HTTP/2 unless you edit the nginx configuration yourself. They are not exposed in their default state, whether they have been rebuilt yet or not.

If you are using pinned image tags, be aware that these patches will *not* be backported to older image versions.

The following images have been updated:

```text
ardour:latest
azahar:latest
babybuddy:latest
bookstack:latest
cops:latest
darktable:latest
dokuwiki:latest
freshrss:latest
gitqlient:latest
grav:latest
grocy:latest
handbrake:latest
heimdall:development
heimdall:latest
inkscape:latest
intellij-idea:latest
kdenlive:latest
keepassxc:latest
kicad:latest
kimai:latest
libreoffice:latest
librespeed:latest
lm-studio:latest
lollypop:latest
lychee:latest
mastodon:develop
mastodon:glitch
mastodon:latest
mysql-workbench:latest
nextcloud:develop
nextcloud:latest
nextcloud:previous
nginx:latest
pelorus:latest
phpmyadmin:latest
pidgin:latest
piwigo:latest
ppsspp:latest
pycharm:latest
signal:latest
speedtest-tracker:latest
sqlitebrowser:latest
swag:latest
telegram:latest
vlc:latest
webtop:alpine-i3
webtop:alpine-kde
webtop:alpine-mate
webtop:arch-i3
webtop:arch-kde
webtop:arch-mate
webtop:arch-xfce
webtop:latest
wireshark:latest
wps-office:latest
xbackbone:latest
```

Still waiting on a distro fix: all images based on Debian 13, Ubuntu, Fedora 44 and Kali (most of the Selkies-based images, including the Debian, Ubuntu and Fedora flavours of webtop), and `diskover` and `projectsend`, which are on older Alpine releases that have no fixed nginx package.
