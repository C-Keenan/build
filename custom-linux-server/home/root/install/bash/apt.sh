#!/usr/bin/bash

apt update
apt upgrade -y
apt autoremove -y
apt install systemctl -y
apt install docker.io docker-compose -y
exit