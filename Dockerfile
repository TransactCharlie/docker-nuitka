FROM ubuntu:latest

ARG VCS_REF
ARG BUILD_DATE
ENV NUITKA_VERSION 0.6.0.6 

MAINTAINER Charlie Gildawie <charles.gildawie@gmail.com>
LABEL org.label-schema.name="Docker Nuitka Build Base" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version=$NUITKA_VERSION \
      org.label-schema.vcs-url="https://github.com/TransactCharlie/docker-nuitka" \
      org.label-schema.description="Docker Image premade with Python3, docker.io and nuitka compiler"

RUN apt-get update
RUN apt-get install -y python3-dev ccache python python3-pip chrpath docker.io
RUN pip3 install --upgrade pip nuitka==$NUITKA_VERSION
COPY build_scripts /build_scripts