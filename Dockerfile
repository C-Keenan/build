# syntax=docker/dockerfile:1
FROM ubuntu:23.10
RUN mkdir -p /home/root
RUN mkdir -p /usr/bin
RUN mkdir -p /etc
WORKDIR /
EXPOSE 80
COPY .\home\root\* /home/root
COPY .\usr\bin\* /usr/bin
RUN apt install bash -y
RUN chmod +x /home/root/initiate.sh
RUN sh /home/root/initiate.sh
