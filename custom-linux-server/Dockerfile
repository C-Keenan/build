# syntax=docker/dockerfile:1.4
FROM ubuntu:22.04
USER root
WORKDIR /
RUN mkdir -p /home/root/bash
RUN mkdir -p /home/root/docker
RUN mkdir -p /home/root/public-www
COPY bash /home/root/bash
COPY docker /home/root/docker
COPY etc /home/root/etc
COPY public-www /home/root/public-www
RUN bash /home/root/bash/apt_install.sh
EXPOSE 80
EXPOSE 443
CMD ["systemctl", "start", "nginx"]
