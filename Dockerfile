FROM dokken/ubuntu-22.04
USER root

ENV HOME /home
ENV USER1 'root'
ENV USER2 'server'
ENV USER3 'www'
ENV USER1HOME $HOME/root
ENV USER2HOME $HOME/server
ENV USER3HOME $HOME?www
ENV STARTUPDIR $HOME/$USER1HOME
ENV INST_SCRIPTS $STARTUPDIR/install
ENV BASH $INST_SCRIPTS/bash
ENV ENVFILES $INST_SCRIPTS/envfiles

######### Customize Container Here #########



RUN sh $BASH/apt-update.sh



######### End Customization #########

RUN chown 1000:1000