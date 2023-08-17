# syntax=docker/dockerfile:1
FROM ubuntu:23.10
USER root
WORKDIR /
COPY home /home
EXPOSE 80
RUN bash /home/root/install/bash/apt.sh
RUN bash /home/root/install/bash/initiate.sh
