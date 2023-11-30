---
title: 'Known Issue: qBittorrent 4.6.1 Web UI Password'
date: '2023-11-22 18:00:00Z'
severity: notice
resolved: true
resolvedWhen: '2023-11-30'
affected:
  - 'Known Issues'
  - 'qbittorrent'
section: 'issue'
---

**Fix has been released, update to 4.6.2. The [readme](https://github.com/linuxserver/docker-qbittorrent#application-setup) has been updated to reflect how the password for new installs are handled going forward**

There is a known issue with qBittorrent 4.6.1, due to an [upstream change](https://www.qbittorrent.org/news#mon-nov-20th-2023---qbittorrent-v4.6.1-release) which changes the Web UI password to a random value on startup if you have not changed it from the default. This change has been made for security reasons due to hackers exploiting users who have exposed their instances to the internet with default credentials.

Due to an [upstream bug](https://github.com/qbittorrent/qBittorrent/issues/19984) the generated password is not printed to the container logs, making it impossible to log in.

### Workaround

As a workaround until a fix can be released, start the container with the `:version-4.6.0-r0` image tag, login to the Web UI using the old default credentials, and change the admin account password. You will then be able to switch back to the `:version-4.6.1-r0` or `:latest` tags. For Unraid users this will require you to edit the container and under the Advanced options change the Repository to append the required tag; you can find step-by-step instructions [here](https://github.com/linuxserver/docker-qbittorrent/issues/268#issuecomment-1821123416).
