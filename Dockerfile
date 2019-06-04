FROM debian:latest

RUN apt-get update && apt-get install -y git
RUN useradd nopasswd -p ""

VOLUME /usr
