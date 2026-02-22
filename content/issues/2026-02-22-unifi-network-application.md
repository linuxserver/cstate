---
title: 'Unifi OS Server & Unifi Network Application'
date: '2026-02-22 21:00:00Z'
informational: true
affected:
  - 'Notifications'
  - 'unifi-network-application'
section: 'issue'
---

There has been a lot of [discussion](https://github.com/orgs/linuxserver/discussions/94) recently regarding the annoucement from Ubiquiti that they intend to deprecate their Unifi Network Application and replace it with Unifi OS Server. This has led to questions around the ongoing support for our existing [Unifi Network Application](https://github.com/linuxserver/docker-unifi-network-application) image and the creation of a Unifi OS Server image.

Unifi OS Server is a Podman-based orchestration system, that runs half a dozen separate components providing different elements of the Unifi service for both their networking equipment and their NVR products. They do not directly publish the images used for these components, and while it is technically possible to containerise the platform by extracting the images from a running install it is not something we are currently considering due to the administrative overhead involved.

We will support our Unifi Network Application image for as long as Ubiquiti continue to make the install packages available to download, after which we will move to deprecate it. If the situation around Unifi OS Server changes significantly, we will re-evalutate whether or not it makes sense for us to create and maintain an image for it.
