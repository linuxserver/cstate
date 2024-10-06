---
title: 'PSA: Securing KasmVNC-Based Containers'
date: '2024-10-06 21:00:00Z'
informational: true
affected:
  - 'kasmvnc'
section: 'issue'
---

Due to a recent increase in reported issues with users exposing their KasmVNC-based containers to the internet without authentication, we have prepared the following PSA:

By default containers using our KasmVNC baseimage have no authentication and the optional environment variables `CUSTOM_USER` and `PASSWORD` to enable basic http auth via the embedded NGINX server should only be used to secure the container from unwanted access on a local network. From the web interface a terminal can be launched and it is configured for passwordless sudo, so anyone with access to it can install and run whatever they want along with probing your local network. If you are exposing one of these containers to the Internet we recommend putting it behind a reverse proxy, such as [SWAG](https://github.com/linuxserver/docker-swag), and ensuring a secure authentication solution is in place.

At time of publication, the list of containers using a KasmVNC baseimage is:

* altus
* ardour
* audacity
* bambustudio
* blender
* boinc
* calibre
* calligra
* chromium
* cura
* darktable
* digikam
* doublecommander
* ferdium
* filezilla
* firefox
* freecad
* freetube
* gimp
* github-desktop
* gitqlient
* inkscape
* kali-linux
* kdenlive
* keepassxc
* kicad
* krita
* libreoffice
* librewolf
* lollypop
* mediaelch
* msedge
* mullvad-browser
* mysql-workbench
* obsidian
* opera
* orcaslicer
* pidgin
* qdirstat
* rawtherapee
* remmina
* rustdesk
* series-troxide
* shotcut
* spotube
* sqlitebrowser
* steamos
* ungoogled-chromium
* vscodium
* webcord
* webtop
* wireshark
* wps-office
* yaak
* zotero
