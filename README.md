# Docker Nuitka
Base Image from ubuntu:latest with:

* Python3
* Nuitka
* docker.io

It's designed to be used as a build image to compile python programs. Ideally for those compilations to be used as microcontainers in their own right.

## Try it out
```
docker run -it transactcharlie/docker-nuitka bash
```
Will get you into an interactive bash session where you can try out nuitka.

## Pipeline
Docker builds are created on pushes and hosted on dockerhub.

## Current Nuitka Build Version
0.5.30