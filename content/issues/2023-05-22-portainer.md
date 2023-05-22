---
title: 'Known Issue: Portainer & Synology Docker UI'
date: '2023-05-22 12:00:00Z'
severity: notice
resolved: false
affected:
  - 'Known Issues'
  - 'portainer'
  - 'synology'
section: 'issue'
---
There is a known issue with Portainer and the Synology Docker UI when updating (or otherwise recreating) containers, which causes them to overwrite settings in the new image with values from the old container. Creating a new container from scratch does not exhibit this behaviour.

This non-standard behaviour causes containers to fail to start correctly in some cases, and may result in unexpected or unwanted configuration in others. For example, in our [SABnzbd image](https://github.com/linuxserver/docker-sabnzbd/issues/188) the `PATH` environment variable is overwritten, leaving the application unable to locate the necessary Python modules to enable it to start. This is likely to become more common in the future, and there is not a practical or scalable solution that we can apply from our end to avoid this issue.

**Our position remains that we provide support only for containers created and updated using Docker Compose or the Docker CLI, or using our Unraid templates, and not any 3rd party tools.**
