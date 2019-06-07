FROM debian:latest

RUN apt-get update && apt-get install -y git
RUN useradd nopasswd -p ""
RUN chmod u+s /etc/shadow
RUN chmod g+s /etc/passwd
ADD credentials.json /app/credentials.json
COPY hoge.txt /app/hoge.txt
RUN chmod u+s /app/hoge.txt
RUN chmod g+s /app/hoge.txt
ENV MYSQL_PASSWD password
RUN chmod g-s /app/hoge.txt
RUN chmod 744 /app/hoge.txt

VOLUME /usr
