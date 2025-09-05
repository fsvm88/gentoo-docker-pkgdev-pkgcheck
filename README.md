# gentoo-docker-pkgdev-pkgcheck

This repository provides a Docker image based on `gentoo/stage3:latest` with the Gentoo developer tools `pkgdev` and `pkgcheck` pre-installed.

## Purpose

- Automates the creation of a minimal Gentoo environment for package development and QA.
- The image is rebuilt weekly and published as `fsvm88/gentoo-docker-pkgdev-pkgcheck:latest` on Docker Hub via GitHub Actions.
- Repository data is removed after installation to keep the image lean.

## Usage

Pull the image from Docker Hub:

```sh
# fish shell example
docker pull fsvm88/gentoo-docker-pkgdev-pkgcheck:latest
```

Run a container:

```sh
docker run -it fsvm88/gentoo-docker-pkgdev-pkgcheck:latest
```

## Why?

This image is useful for Gentoo developers and contributors who need a CI reproducible docker environment ready for pkgcheck runs.
