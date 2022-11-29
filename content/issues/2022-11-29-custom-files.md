---
title: 'Notification: Deprecation of Legacy Custom Scripts & Services Locations'
date: '2022-11-29 18:00:00Z'
informational: true
affected:
  - 'Notifications'
  - 'custom-files'
  - 'custom-services'
section: issue
---
As we [announced back in August](https://info.linuxserver.io/issues/2022-08-29-custom-files/), we have made changes to the locations that custom scripts and services are imported from. We are now starting the process of deprecating the old locations. This means that after the end of December 2022 we will no longer support running custom scripts and services from the legacy locations within the `/config` mount. **Please note that it may take several days, or even a few weeks in some cases, for this change to propagate to all of our images**.

### Custom Files

These now reside in `/custom-cont-init.d`. The folder and files need to be owned by root, the files need to be chmod `+x` and are executed in name order.

### Custom Services

Similar to custom files, these now reside in `/custom-services.d`. The folder and files need to be owned by root, and the service files need to be chmod `+x`.

### Mounting Paths

Because these new locations are outside of `/config` you will need to mount them like any other additional volume if you wish to make use of them. e.g. `-v /home/foo/appdata/my-custom-files/bar:/custom-cont-init.d:ro` if using the Docker CLI or

```yaml
services:
  bar:
    volumes:
      - /home/foo/appdata/bar:/config
      - /home/foo/appdata/my-custom-files/bar:/custom-cont-init.d:ro
```

if using compose. Where possible, to improve security, we recommend mounting them read-only (`:ro`) so that container processes cannot write to the location.

Please note that we do not support mounting folders for custom scripts and services if they sit within the same folder that you are mounting for /config. i.e.

```yaml
      - /home/foo/appdata/bar:/config
      - /home/foo/appdata/bar/custom-stuff:/custom-cont-init.d
```

as this can cause you permissions problems.
