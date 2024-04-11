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
# Update APT system Repositories
RUN apt update && apt upgrade -y && apt autoremove -y 
# Install neccessary dependencies
RUN apt install systemctl -y && apt install nginx -y 
# Move custom nginx.conf file to the proper folder
RUN mv /home/root/etc/apache2/sites-available/nginx.conf /etc/nginx/nginx.conf && systemctl enable nginx
EXPOSE 80
EXPOSE 443
CMD ["systemctl", "start", "nginx"]
