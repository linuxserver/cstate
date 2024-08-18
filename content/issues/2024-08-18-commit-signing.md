---
title: 'PSA Regarding Potential Misconfiguration of Unifi-Network-Application and MongoDB'
date: '2024-08-18 23:00:00Z'
informational: true
affected:
  - ci
  - github
section: issue
---

Effective immediately we have started signing all of the git commits created by our CI account (I know, we should have done this a while ago but there were logistical issues that made it difficult). This means you can verify that all commits to our repos were, in fact, authored by us and that any commits to other random repos, were not. Most of the individuals who commit to our repos already sign their commits, but we're working on getting everyone else into that position in the near future. If you're contributing code via PR, we'd appreciate it if you could sign your commits too.

Our public key is `ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDHjFYCmz+jSuS/tXs/KTtnLlaZhXTzJ/6EM9Ra9hSZB` and the key signature is `SHA256:fh11rWL5oCDRdg8ER4TS1r8mdK7lLmwPcJouqXZgNko`. The email associated with the commits is ci@<span>linuxserver</span>.io.

In GitHub this can be seen as a Verified badge against the commit:

![GitHub Commit Signing](/img/github-commit-signing.png)

In GitLab it will similarly show a Verified badge against the commit. Unfortunately, because we use Gitlab as a mirror of GitHub it will show commits authored by GitHub on behalf of users - such as via the web UI - as Unverified:

![Gitlab Commit Signing](/img/gitlab-commit-signing.png)

And on the command line a `git log --show-signature` will output signing data with each signed commit. Note that you will need to add our email and public key to your git allowedSignersFile for it to show as a Good signature:

```shell
$ git log --show-signature
commit c76fe36fd9146817c3ec362a371e31f0f76e90c7 (HEAD -> master, tag: 5.8.3.8933-ls233, origin/master, origin/HEAD)
Good "git" signature for ci@linuxserver.io with ED25519 key SHA256:fh11rWL5oCDRdg8ER4TS1r8mdK7lLmwPcJouqXZgNko
Author: LinuxServer-CI <ci@linuxserver.io>
Date:   Sun Aug 18 16:58:40 2024 +0000

    Bot Updating Templated Files
```
