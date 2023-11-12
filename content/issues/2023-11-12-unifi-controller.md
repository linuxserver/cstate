---
title: 'Unifi Controller Deprecation Reminder'
date: '2023-11-12 21:00:00Z'
informational: true
affected:
  - Deprecations
  - unifi-controller
  - unifi-network-application
section: issue
---

As we [previously announced](https://info.linuxserver.io/issues/2023-09-06-unifi-controller/), due to the way in which Ubiquiti package and distribute their software our [Unifi Controller](https://github.com/linuxserver/docker-unifi-controller) container has reached a point where we cannot upgrade to newer supported packages without making breaking changes to the image.

As a result we have decided to deprecate our Unifi Controller container and replace it with a new [Unifi Network Application](https://github.com/linuxserver/docker-unifi-network-application) container. This new container uses our current base images and a separate mongodb instance, which makes it substantially easier for us to maintain going forward.

We will continue to support our Unifi Controller image until **2024-01-01**, at which point you will need to have migrated to the Unifi Network Application container to continue to receive support.

### The new container is not a drop-in replacement and it is crucial that you read the entire [Application Setup](https://github.com/linuxserver/docker-unifi-network-application#application-setup) section of the readme before attempting to migrate an existing install

Those of you who have been using our `mongoless` tag for the Unifi Controller container can switch directly to the Unifi Network Application container without needing to perform any migration steps.
