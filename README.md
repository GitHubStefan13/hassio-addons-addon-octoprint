# Home Assistant Community Add-on: SSH & Web Terminal

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

[![GitLab CI][gitlabci-shield]][gitlabci]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]

[![Discord][discord-shield]][discord]
[![Community Forum][forum-shield]][forum]

This add-on allows you to host a Lightweight Git Server - gitolite.

## About

This add-on allows you to host a Lightweight Git Server, giving you access to your
repositories/projects over ssh.
It also includes a access control to Control who can Read/Write to repositories.

## WARNING

While this add-on is created and maintained with care and with security in mind,
in the wrong or inexperienced hands, it could damage your system.

## Features

This add-on, of course, provides an gitolite server, based on [gitolite][gitolite].
Additionally, it comes out of the box with the following:

- Add new repositories
- Control access to your repositories

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Search for the "Gitolite" add-on in the Supervisor add-on store
   and install it.
1. Configure the `username` and `password`/`authorized_keys` options.
1. Start the "Gitolite" add-on.
1. Check the logs of the "Gitolite" add-on to see if everything
    went well.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

SSH add-on configuration:

```yaml
gitolite:
  repositories: [
    project: 'project1',
    read: [user1, user2],
    write: [user2]
  ]
  users: [
    name: 'user1',
    password: 'passwd',
    authorized_keys:
      - ssh-rsa AASDJKJKJFWJFAFLCNALCMLAK234234.....
  ]
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option group `gitolite`

---

The following options are for the option group: `gitolite`. These settings
only apply to the gitolite daemon.

#### Option `gitolite`: `repositories`

This option group allows you to make changes to the repositories

#### Option `gitolite`: `repositories`: `read`

This option group allows you to change the users that have read access to
this repository

#### Option `gitolite`: `repositories`: `write`

This option group allows you to change the users that have write access to
this repository

#### Option `gitolite`: `users`

This option group allows you to change to users allowed to access gitolite

#### Option `gitolite`: `users` :  `name`

Sets the username to log in with.

#### Option `gitolite`: `users` :  `password`

Sets the password to log in with.

#### Option `gitolite`: `users` `authorized_keys`

Add one or more public keys to your user to use with authentication.
This is the recommended over setting a password.

Please take a look at the awesome [documentation created by GitHub][github-ssh]
about using public/private key pairs and how to create them.

## Known issues and limitations

## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality. The format of the log is based on
[Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of ``MAJOR.MINOR.PATCH``. In a nutshell, the version will be incremented
based on the following:

- ``MAJOR``: Incompatible or major changes.
- ``MINOR``: Backwards-compatible new features and enhancements.
- ``PATCH``: Backwards-compatible bugfixes and package updates.

## Support

Got questions?

You have several options to get them answered:

- The [Home Assistant Community Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- The [Home Assistant Discord chat server][discord-ha] for general Home
  Assistant discussions and questions.
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We have set up a separate document containing our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [GitHubStefan13][GitHubStefan13].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## We have got some Home Assistant add-ons for you

Want some more functionality to your Home Assistant instance?

We have created multiple add-ons for Home Assistant. For a full list, check out
our [GitHub Repository][repository].

## License

MIT License

Copyright (c) 2020 Stefan Unruh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[alpine-packages]: https://pkgs.alpinelinux.org/packages
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[commits-shield]: https://img.shields.io/github/commit-activity/y/hassio-addons/addon-ssh.svg
[discord-ha]: https://discord.gg/c5DvZ4e
[discord-shield]: https://img.shields.io/discord/478094546522079232.svg
[discord]: https://discord.me/hassioaddons
[forum-shield]: https://img.shields.io/badge/community-forum-brightgreen.svg
[forum]: https://community.home-assistant.io/t/community-hass-io-add-on-ssh-web-terminal/33820?u=frenck
[GitHubStefan13]: https://github.com/GitHubStefan13
[github-ssh]: https://help.github.com/articles/connecting-to-github-with-ssh/
[gitlabci-shield]: https://gitlab.com/hassio-addons/addon-ssh/badges/master/pipeline.svg
[gitlabci]: https://gitlab.com/hassio-addons/addon-ssh/pipelines
[home-assistant]: https://home-assistant.io
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/hassio-addons/addon-ssh/issues
[keepchangelog]: http://keepachangelog.com/en/1.0.0/
[license-shield]: https://img.shields.io/github/license/hassio-addons/addon-ssh.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2020.svg
[gitolite]: https://gitolite.com
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[reddit]: https://reddit.com/r/homeassistant
