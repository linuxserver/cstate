---
title: 'Known Issue: Paperless-ng'
date: '2021-07-26'
severity: notice
resolved: false
resolvedWhen:
affected:
  - 'Known Issues'
  - 'paperless-ng'
section: 'issue'
---
The initial release of our paperless-ng container did not correctly map the contents of /config with the config mount point. We are pushing an update to correct this issue, however, users will need to manually copy out their configuration files or else there will be data loss. You copy out all necessary files by running the following command:

```
docker cp paperless-ng:/app/paperless/data/db.sqlite3 .
```

This will copy the existing database to your current working directory. You can then safely place this file into the /config mount of paperless-ng and safely update.
