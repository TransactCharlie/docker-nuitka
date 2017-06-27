FROM ubuntu:latest

MAINTAINER Charlie Gildawie <charles.gildawie@gmail.com>
LABEL org.label-schema.name="Docker Nuitka Build Base" \
      org.label-schema.vcs-url="https://github.com/TransactCharlie/docker-nuitka" \
      org.label-schema.description="Docker Image premade with Python3, docker.io and nuitka compiler"

RUN apt-get update \
 && apt-get install -y python3-dev python python3-pip chrpath docker.io \
 && pip3 install --upgrade pip nuitka