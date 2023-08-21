# syntax=docker/dockerfile:1.4
FROM ubuntu:23.10
USER root
WORKDIR /
RUN mkdir -p /home/root/bash
RUN mkdir -p /home/root/docker
RUN mkdir -p /home/root/etc/apache2/sites-available
RUN mkdir /home/root/public-www
COPY bash /home/root/bash
COPY docker /home/root/docker
COPY etc /home/root/etc
EXPOSE 80
EXPOSE 443
