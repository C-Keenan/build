# syntax=docker/dockerfile:1
FROM ubuntu:23.10
USER root
WORKDIR /
COPY home /home
RUN mkdir -p /home/root/docker/lamp
RUN touch /home/root/docker/lamp/docker-compose.yml
COPY home/docker/lamp /home/root/docker/lamp
EXPOSE 80
EXPOSE 443
RUN bash /home/root/install/bash/apt_install.sh
ENTRYPOINT [ "systemctl", "start", "apache2"]
