# python-ci-image
A Docker image for CI with Python.

[![Build and publish Docker images to ghcr.io](https://github.com/thombashi/python-ci-image/actions/workflows/build_docker_image_ghcrio.yml/badge.svg)](https://github.com/thombashi/python-ci-image/actions/workflows/build_docker_image_ghcrio.yml)
[![Build and publish Docker images to docker.io](https://github.com/thombashi/python-ci-image/actions/workflows/build_docker_image_dockerio.yml/badge.svg)](https://github.com/thombashi/python-ci-image/actions/workflows/build_docker_image_dockerio.yml)

## Docker registries
- [ghcr](https://github.com/thombashi/python-ci-image/pkgs/container/python-ci)
- [dockerhub](https://hub.docker.com/r/thombashi/python-ci)

## Preinstalled packages
The following packages are preinstalled in `python-ci` images:

- `Python`
    - [pip](https://pip.pypa.io/en/stable/)
    - [tox](https://tox.wiki/en/latest/)
- `make`

## Available tags for python-ci image
- `3.12`
- `3.11`
- `3.10`
- `3.9`
- `3.8`
