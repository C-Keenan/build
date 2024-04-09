# syntax=docker/dockerfile:1.4
FROM ubuntu:23.10
USER root
WORKDIR /
RUN mkdir -p /home/root/bash
RUN mkdir -p /home/root/docker
RUN mkdir -p /home/root/public-www
COPY bash /home/root/bash
COPY docker /home/root/docker
COPY etc /home/root/etc
COPY public-www /home/root/public-www
RUN apt update && apt upgrade -y && apt autoremove -y && apt install systemctl -y && apt install nginx -y && systemctl enable nginx && mv /home/root/etc/apache2/sites-available/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
EXPOSE 443
CMD ["systemctl", "start", "nginx"]
