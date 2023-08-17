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
RUN apt install ufw -y
RUN apt install apache2 -y
RUN systemctl start apache2
RUN ufw allow http
RUN ufw enable
