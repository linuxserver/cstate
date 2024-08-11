---
title: 'Changes To Our Image Deprecation Process'
date: '2024-08-12 18:00:00Z'
informational: true
affected:
  - Deprecations
section: issue
---

Currently, when we deprecate an image, we add a note to the readme and to the startup logs to make users aware that the image is no longer actively supported and will not receive further updates. Users can then make their own decision as to whether to continue using it or not. Despite this, we still see a significant number of pulls for images that we have long since stopped updating, primarily because users don't read the notices, or use a container management platform that doesn't expose them.

Wherever possible we want to avoid actually removing images from registries, because it can prevent legitimate uses of them & because we feel it goes against the open source philosophy, so to try and reduce the number of users setting up new instances with unsupported and outdated images, we are changing our deprecation process.

Going forward, when we deprecate an image, we will be pushing an empty index for the `latest` tags (or corresponding branch tags for alternate releases such as develop or nightly). This will make it impossible for someone to pull the `latest` tag for that image and require them to specifically identify and pull a named version tag. Our hope is that by adding this small hurdle it will dramatically reduce the number of users unknowingly running unsupported images.
