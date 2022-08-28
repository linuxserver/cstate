---
title: 'Notification: Changes For Custom Scripts & Services'
date: '2022-08-29 12:00:00Z'
informational: true
affected:
  - 'Notifications'
  - 'custom-files'
  - 'custom-services'
section: issue
---
We have long supported [customizing our containers](https://www.linuxserver.io/blog/2019-09-14-customizing-our-containers) via scripts and services as a simple way for users to add their own logic and packages to a container without having to modify the Dockerfile and maintain a local build of the image. As part of the broader refresh of our base images, which has already made changes to the way that [mods work](https://info.linuxserver.io/issues/2022-08-27-mods/), we are also making changes to custom files and services.

### Custom Files

These now reside in `/custom-cont-init.d` instead of under `/config/custom-cont-init.d` which allows us to decouple them from our permissions logic, and means we no longer have to create the folders even if people aren't using them. Beyond the change in location everything else remains the same - the folder and files need to be owned by root, the files need to be chmod `+x` and are executed in name order.

### Custom Services

Similar to custom files, these now reside in `/custom-services.d` instead of under `/config/custom-services.d` and need to be owned by root. However, there are more substantial additional changes for services as they now need to be compliant with s6 v3. For a summary please refer to the docker mods [README.MD](https://github.com/linuxserver/docker-mods/blob/master/README.md#new-v3-mods) and for more detail please refer to the s6-overlay [README.MD](https://github.com/just-containers/s6-overlay#writing-a-service-script).

The old custom locations will continue to work for a while to provide time for users to migrate but will generate warnings in the logs, as well as writing files to the old locations to notify users of the changes. We will post another notice before we remove the legacy locations entirely.
