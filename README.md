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

## Build Status
[![Build Status](https://travis-ci.org/TransactCharlie/docker-nuitka.svg?branch=master)](https://travis-ci.org/TransactCharlie/docker-nuitka)
[![](https://images.microbadger.com/badges/image/transactcharlie/docker-nuitka.svg)](https://microbadger.com/images/transactcharlie/docker-nuitka "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/transactcharlie/docker-nuitka.svg)](https://microbadger.com/images/transactcharlie/docker-nuitka "Get your own version badge on microbadger.com")