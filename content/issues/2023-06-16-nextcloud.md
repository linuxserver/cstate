---
title: 'Notification: Changes to our Nextcloud image'
date: '2023-06-16 12:00:00Z'
informational: true
affected:
  - 'Notifications'
  - 'nextcloud'
section: issue
---
We are releasing a new version of our [Nextcloud image](https://github.com/linuxserver/docker-nextcloud/) that is built with the Nextcloud application inside the image, rather than in the user `/config` volume. This means manually updating Nextcloud via command line will no longer be necessary or supported. The `updater.phar` command is completely removed. Installations for existing users will be migrated automatically when updating the container image. All future updates to your Nextcloud instance will happen via container image updates.

**Updating via the admin web UI is not supported.**

**Downgrading is not supported.**

An important thing to keep in mind is that systems that automatically update your container will result in irreversible changes to your Nextcloud instance. We recommend pinning a specific tagged version like `lscr.io/linuxserver/nextcloud:27.0.0` and manually changing your image version when you are ready to upgrade.

Excerpts from the updated README:

### Updating Nextcloud

Updating the Nextcloud container is done by pulling the new image, throwing away the old container and starting the new one.

It is only possible to upgrade one major version at a time. For example, if you want to upgrade from version 14 to 16, you will have to upgrade from version 14 to 15, then from 15 to 16.

Since all data is stored in the `/config` and `/data` volumes, nothing gets lost. The startup script will check for the version in your volume and the installed docker version. If it finds a mismatch, it automatically starts the upgrade process.
