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
We have long supported [customizing our containers](https://www.linuxserver.io/blog/2019-09-14-customizing-our-containers) via scripts and services as a simple way for users to add their own logic and packages to a container without having to modify the Dockerfile and maintain a local build of the image. As part of the broader refresh of our base images, which has already made changes to the way that [mods work](https://info.linuxserver.io/issues/2022-08-27-mods/), we are also making changes to custom files and services. **Please note that it may take several days, or even a few weeks in some cases, for this change to propagate to all of our images**.

### Custom Files

These now reside in `/custom-cont-init.d` instead of under `/config/custom-cont-init.d` which allows us to decouple them from our permissions logic, and means we no longer have to create the folders even if people aren't using them. Beyond the change in location everything else remains the same - the folder and files need to be owned by root, the files need to be chmod `+x` and are executed in name order.

### Custom Services

Similar to custom files, these now reside in `/custom-services.d` instead of under `/config/custom-services.d`. Beyond the change in location everything else remains the same - the folder and files need to be owned by root, and the service files need to be chmod `+x`.

The old custom locations will continue to work for a while to provide time for users to migrate but will generate warnings in the logs, as well as writing files to the old locations to notify users of the changes. We will post another notice before we remove the legacy locations entirely.

### Mounting Paths

Because these new locations are outside of `/config` you will need to mount them like any other volume if you wish to make use of them. e.g. `-v /home/foo/appdata/my-custom-files:/custom-cont-init.d` if using the Docker CLI or

```yaml
services:
  bar:
    volumes:
      - /home/foo/appdata/bar:/config
      - /home/foo/appdata/my-custom-files:/custom-cont-init.d
```

if using compose. Where possible, to improve security, we recommend mounting them read-only (`:ro`) so that container processes cannot write to the location.
