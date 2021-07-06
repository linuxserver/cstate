---
title: mariadb change to Alpine
date: 2021-07-06
informational: true
affected:
  - Deprecations
  - mariadb
section: issue
---

As [previously announced](https://info.linuxserver.io/issues/2021-03-10-mariadb-alpine/) we have now moved the MariaDB `:alpine` tag to `:latest` and deprecated our Ubuntu-based image. No user action is required when updating to the new tag, but as ever we recommend ensuring you have a proven backup of your data before performing any updates.

If for some reason you need to remain on the old version, you can pin your install to the `version-110.4.20mariabionic` tag, although please be aware that no further updates will be provided for it.
