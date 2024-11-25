---
title: 'PSA: Breaking Changes to Porkbun DNS Plugin for SWAG'
date: '2024-11-25 21:00:00Z'
informational: true
affected:
  - 'swag'
section: 'issue'
---

If you use the Porkbun certbot plugin with SWAG for DNS validation you need to ensure that you have updated your SWAG container to at least version `3.0.1-ls337` before *2024-12-01*, as Porkbun are making changes to their API endpoint that will cause older versions of the plugin to stop working. Specifically, they are updating their API domain root from `porkbun.com` to `api.porkbun.com`.

If you are unsure which version of SWAG you are running, you can use `docker inspect -f '{{ index .Config.Labels "build_version" }}' swag` to output the version of the running container. Newer images will also show this information in the container startup logs.
