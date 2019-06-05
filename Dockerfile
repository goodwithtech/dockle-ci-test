FROM debian:latest

RUN apt-get update && apt-get install -y git
RUN useradd nopasswd -p ""

ADD credentials.json /app/credentials.json

ENV MYSQL_PASSWD password

VOLUME /usr
