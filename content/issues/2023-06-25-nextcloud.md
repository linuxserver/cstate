---
title: "Notification: Changes to our Nextcloud image"
date: "2023-06-25 22:00:00Z"
informational: true
affected:
  - "Notifications"
  - "nextcloud"
section: issue
---

We are releasing a new version of our [Nextcloud image](https://github.com/linuxserver/docker-nextcloud/) that is built with the Nextcloud application inside the image, rather than in the user `/config` volume. This means manually updating Nextcloud via command line will no longer be necessary or supported. The `updater.phar` command is completely removed. Installations for existing users will be migrated automatically when updating the container image. All future updates to your Nextcloud instance will happen via container image updates.

**Updating via the admin web UI is no longer supported.**

**Downgrading is not supported.**

An important thing to keep in mind is that systems that automatically update your container will result in irreversible changes to your Nextcloud instance. We recommend pinning a specific tagged version like `lscr.io/linuxserver/nextcloud:version-27.0.0` and manually changing your image version when you are ready to upgrade.

Excerpts from the updated README:

### Updating Nextcloud

Updating Nextcloud is done by pulling the new image, and recreating the container with it.

It is only possible to upgrade one major version at a time. For example, if you want to upgrade from version 14 to 16, you will have to upgrade from version 14 to 15, then from 15 to 16.

Since all data is stored in the `/config` and `/data` volumes, nothing gets lost. The startup script will check for the version in your volume and the installed docker version. If it finds a mismatch, it automatically starts the upgrade process.

### Can't start Nextcloud

If after updating your container image you receive a message along these lines:

> Can't start Nextcloud because the version of the data (`#.#.#.#`) is more than one major version behind the docker image version (`#.#.#.#`) and upgrading more than one major version is not supported. Please run an image tagged for the major version `##` first."

The version of Nextcloud that you have installed in your persistent `/config` volume will need to be updated using an older image before you can use the new image.

Major version images, to be used for upgrading:

| Image/Tag                                       | PHP |
| ----------------------------------------------- | --- |
| `lscr.io/linuxserver/nextcloud:version-26.0.2`  | 8.2 |
| `lscr.io/linuxserver/nextcloud:version-25.0.4`  | 8.1 |
| `lscr.io/linuxserver/nextcloud:version-24.0.12` | 8.1 |
| `lscr.io/linuxserver/nextcloud:version-23.0.4`  | 7.4 |
| `lscr.io/linuxserver/nextcloud:version-22.2.3`  | 7.4 |
| `lscr.io/linuxserver/nextcloud:version-21.0.3`  | 7.4 |
| `lscr.io/linuxserver/nextcloud:version-20.0.7`  | 7.4 |

Package locked tags, listed for LSIO team reference:

| Image/Tag                                    | PHP | Notes                 |
| -------------------------------------------- | --- | --------------------- |
| `lscr.io/linuxserver/nextcloud:26.0.2-ls245` | 8.1 | Last tag with PHP 8.1 |
| `lscr.io/linuxserver/nextcloud:24.0.6-ls204` | 7.4 | Last tag with PHP 7.4 |

- Check your `/config/www/nextcloud/config/config.php` file or `/config/www/nextcloud/version.php` file to determine the version you have installed
- Switch your image to the corresponding major version from the table above (ex: your files indicate `24.x.x`, use `lscr.io/linuxserver/nextcloud:version-24.0.12`) and start the container
- Run `docker exec -it nextcloud updater.phar` **_repeatedly_** until you have updated to Nextcloud `27.x.x`, or the updater says `This version of Nextcloud is not compatible with > PHP x.x`
- Check your files again to determine the version you have installed
  - If your installed version is below 26, repeat the steps above until you get to version 26
  - If your installed version is 26 or 27, continue with the instructions below
- Switch your image to `lscr.io/linuxserver/nextcloud:version-27.0.0` and start the container. Note the `updater.phar` is no longer available, or needed
- Run `docker logs nextcloud` and check for any issues (report [issues on GitHub](https://github.com/linuxserver/docker-nextcloud/issues))
- As of posting this information, Nextclouod 27 is the latest current version. If you are reading this after a new major version of Nextcloud beyond 27 is released, check [releases on GitHub](https://github.com/linuxserver/docker-nextcloud/releases) and proceed to switch to the next major version tag one by one until you are current. Updating more than one major version at a time is not supported
- You should now be able to switch your image to `lscr.io/linuxserver/nextcloud` (no tag) if you prefer to run the latest image (although we do recommend pinning a specific version)
- Run `docker exec -it nextcloud mv /config/nginx/site-confs/default.conf /config/nginx/site-confs/default.conf.bak`
- Run `docker exec -it nextcloud mv /config/nginx/nginx.conf /config/nginx/nginx.conf.bak`
- Run `docker restart nextcloud`
- Nextcloud should now be in a working state

Optional:

- If you had customized any of the nginx configs that were renamed above, compare the `.bak` file to the new live file and apply any customizations you require. Note the `root` line in `site-confs/default.conf` should be changed from `/config/www/nextcloud/` to `/app/www/public`
- Remove the `.bak` files
