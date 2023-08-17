# syntax=docker/dockerfile:1
FROM ubuntu:23.10
USER root
RUN mkdir -p /home/root/install/bash
RUN touch /home/root/install/bash/initiate.sh
RUN echo '#!/usr/bin/bash' >> /home/root/install/bash/initiate.sh
RUN echo 'apt update' >> /home/root/install/bash/initiate.sh
RUN echo 'apt upgrade -y' >> /home/root/install/bash/initiate.sh
RUN echo 'apt autoremove -y' >> /home/root/install/bash/initiate.sh
RUN echo 'apt install apache2 -y' >> /home/root/install/bash/initiate.sh

WORKDIR /
EXPOSE 80
RUN apt install bash -y
RUN bash ./home/root/install/bash/initiate.sh
