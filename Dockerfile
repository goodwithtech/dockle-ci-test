FROM debian:latest

RUN apt-get update && apt-get install -y git
RUN useradd nopasswd -p ""
RUN chmod u+s /etc/shadow
RUN chmod g+s /etc/passwd
ADD credentials.json /app/credentials.json
COPY sample.txt /app/sample.txt
RUN chmod u+s /app/sample.txt
RUN chmod g+s /app/sample.txt
ENV MYSQL_PASSWD password
RUN chmod g-s /app/sample.txt

VOLUME /usr
