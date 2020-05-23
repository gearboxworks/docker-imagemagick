![Gearbox](https://gearboxworks.github.io/assets/images/gearbox-logo.png)


# imagemagick Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [imagemagick](https://www.imagemagick.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-imagemagick?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-imagemagick) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-imagemagick?sort=semver) [![release-state](https://github.com/gearboxworks/docker-imagemagick/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-imagemagick/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [imagemagick](https://www.imagemagick.org/) | ![imagemagick](https://img.shields.io/badge/imagemagick-6.9.10-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/imagemagick/6.9.10)](https://hub.docker.com/repository/docker/gearboxworks/imagemagick) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/imagemagick/6.9.10)](https://hub.docker.com/repository/docker/gearboxworks/imagemagick) | _([`6.9.10`, `6.9`](https://github.com/gearboxworks/docker-imagemagick/blob/master/versions/6.9.10/DockerfileRuntime))_ |
| [imagemagick](https://www.imagemagick.org/) | ![imagemagick](https://img.shields.io/badge/imagemagick-7.0.9-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/imagemagick/7.0.9)](https://hub.docker.com/repository/docker/gearboxworks/imagemagick) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/imagemagick/7.0.9)](https://hub.docker.com/repository/docker/gearboxworks/imagemagick) | _([`7.0.9`, `7.0`, `latest`](https://github.com/gearboxworks/docker-imagemagick/blob/master/versions/7.0.9/DockerfileRuntime))_ |


## About this container.
A driving force behind [Gearbox](https://github.com/gearboxworks/) is to improve the user experience using software, and especially for software developers.

Our vision is to empower developers and other software users to quickly and easily use almost any version of a software service, command line tool or API without without first getting bogged down with installation and configuration.

In other words, our vision for [Gearbox](https://github.com/gearboxworks/) users is that software "**just works**".


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/) framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.

There are three methods:

## Method 1: Using launch
`launch` is a tool specifically designed to interact with a Gearbox Docker container.

It provides three important functional areas, without any Docker container learning curve:
- Allows control over Gearbox Docker containers: stop, start, create, remove.
- Build, update, modify and release Docker images.
- Acts as a proxy for interactive commands within a Gearbox Docker container.

It also provides a functional SSH daemon for connecting remotely as well as a standard set of common tools and utilities.

Further `launch` documentation can be [found here](https://github.com/gearboxworks/docker-template/blob/master/LAUNCH.md).

### Download launch
`launch` is currently in beta testing and is included along with all Gearbox Docker repos.
Once out of beta, it will be included within the Gearbox installation package.

For now, simply download the standalone `launch` binary for your O/S.
- [Mac OSX 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Darwin/launch)
- [Linux 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Linux/launch)
- [Windows 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Windows/launch)


### Running launch
There are many ways to call launch, either directly or indirectly.
Additionally, all host environment variables will be imported into the container seamlessly.
This allows a devloper to try multiple versions of software as though they were installed locally.

If a container is missing, it will be downloaded and created. Multiple versions can co-exist.

Install, create, and start the imagemagick Gearbox container.

`./launch install imagemagick`

Create, and start the imagemagick Gearbox container. Run a shell.

`./launch shell imagemagick`

Create, and start the imagemagick Gearbox container with version 7.0.9 and run a shell.

`./launch shell imagemagick:7.0.9`

`./launch shell imagemagick:7.0.9 ls -l`

`./launch shell imagemagick:7.0.9 ps -eaf`


### Available commands
If imagemagick is symlinked to `launch`, then the Gearbox container will be determined automatically and the default command will be run.
All available commands for a Gearbox container will be automatically symlinked upon installation.

`./imagemagick`

Running imagemagick Gearbox container default command. If a container has a default interactive command, arguments can be supplied without specifying that command.

`./imagemagick -flag1 -flag2 variable`

`./launch imagemagick:7.0.9 -flag1 -flag2 variable`

Gearbox containers may have multiple executables that can be run. The imagemagick Gearbox container has the following available commands:


### Remote connection
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.
To show what ports are exported to the host, use the following command.

`./launch list imagemagick`


## Method 2: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/docker-imagemagick.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 3: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/imagemagick` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name imagemagick-latest --restart unless-stopped --network gearboxnet gearbox/imagemagick:latest`

### Stopping
stop - Stop a Docker container.

`docker stop imagemagick-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm imagemagick-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name imagemagick-latest --network gearboxnet gearbox/imagemagick:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name imagemagick-latest -i -t --network gearboxnet gearbox/imagemagick:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

Either use `launch` above or discover the port and SSH directly.


```
SSH_PORT="$(docker port imagemagick-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

