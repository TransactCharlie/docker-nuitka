FROM ubuntu:latest

RUN apt-get update \
 && apt-get install -y python3-dev python python3-pip chrpath \
 && apt-get install -y docker.io \
 && pip3 install --update pip \ 
 && pup3 install nuitka \
