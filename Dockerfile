# syntax=docker/dockerfile:1
FROM ubuntu:jammy
RUN mkdir -p /home/root
WORKDIR /home/root/www
EXPOSE 80
RUN apt update
RUN apt upgrade -y
RUN apt autoremove -y
RUN apt install bash -y
RUN apt install systemctl -y
RUN apt install apche2 -y
RUN apt install ufw -y
RUN systemctl start apache2