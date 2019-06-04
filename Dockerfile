FROM ubuntu:latest

RUN apt-get install wget curl git
RUN useradd nopasswd -p ""

VOLUME /usr
