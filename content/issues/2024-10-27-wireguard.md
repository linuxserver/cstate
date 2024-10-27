---
title: 'Reminder: Wireguard Legacy Tag Deprecation'
date: '2024-10-27 20:00:00Z'
informational: true
affected:
  - Deprecations
  - wireguard
section: issue
---

A little over a year ago we updated our default Wireguard image to no longer support building the Wireguard kernel modules and moved that functionality to the `legacy` tag. We did this on the basis that most users were running a kernel that already had built-in Wireguard support (5.6 or above in terms of official kernel releases) and this allowed us to reduce the size of the default image by 600Mb for them.

Revisiting the situation now we see that the vast majority of users are now either running a kernel with built-in Wireguard support *or* a custom kernel, such as on a VPS or NAS, which we have never supported building for. As a result we have decided to deprecate the `legacy` tag from the end of 2024.

In practice this means there's only one case where there will be a still-supported kernel version that doesn't have built-in Wireguard support: 4.19, which goes EOL at the end of 2025. Our stats show a tiny handful of users that this applies to.

If you are still running a 4.19 kernel, or are running any other EOL pre-5.6 kernel, and for whatever reason cannot upgrade then your only option will be to build the Wireguard kernel modules *on the host*, which the default image (using the `latest` tag) will then be able to make use of.

We will provide additional reminders of this deprecation towards the end of the year.
