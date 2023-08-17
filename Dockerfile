FROM ubuntu:jammy

CMD 
USER root 

ENV HOME /home
ENV USERHOME $HOME/root
ENV STARTUPDIR $USERHOME
ENV INST_SCRIPTS $STARTUPDIR/install
ENV BASH $INST_SCRIPTS/bash
ENV ENVFILES $INST_SCRIPTS/envfiles

######### Customize Container Here #########


RUN apt update
RUN apt upgrade -y
RUN apt autoremove -y
RUN apt install bash -y
RUN apt install docker.io docker-compose -y
RUN docker pull hello-world:latest
RUN docker run hello-world



######### End Customization #########

RUN chown 1000:1000