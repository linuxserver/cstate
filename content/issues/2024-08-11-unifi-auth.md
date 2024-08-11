---
title: 'PSA Regarding Potential Misconfiguration of Unifi-Network-Application and MongoDB'
date: '2024-08-12 11:00:00Z'
informational: true
affected:
  - 'unifi-network-application'
section: issue
---
We have recently been notified that if [Role Based Access Control (RBAC)](https://www.mongodb.com/docs/manual/core/authorization/#role-based-access-control) is not enabled in MongoDB, the official MongoDB container allows remote access to the db contents over port 27017 without credentials even though the official docs suggest that should only be possible when connecting from 127.0.0.1.

The previous instructions for setting up MongodB we had provided in our [Unifi-Network-Application image readme](https://github.com/linuxserver/docker-unifi-network-application) set up MongoDB without [RBAC](https://www.mongodb.com/docs/manual/core/authorization/#role-based-access-control). If you set up the MongoDB container with the old instructions we had provided, **do not map or expose port 27017**. If you are currently not mapping the port in MongoDB and only allowing Unifi-Network-Application to access it over a dedicated user defined docker bridge network, you should be fine. The instructions did not contain the port mapping section.

The MongoDB init instructions in our [Unifi-Network-Application image readme](https://github.com/linuxserver/docker-unifi-network-application) have been updated to enable [RBAC](https://www.mongodb.com/docs/manual/core/authorization/#role-based-access-control) to help prevent issues due to such misconfigurations in the future.

If you need to map or expose the port because the containers run on different machines, or if you would like to enable auth/RBAC for another reason, we suggest creating new instances of both Unifi-Network-Application and MongoDB with the new instructions and restoring Unifi-Network-Application from a backup.