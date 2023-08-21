#!/usr/bin/bash

apt update
apt upgrade -y
apt autoremove -y
apt install systemctl -y
apt install apache2 -y
mkdir -p /home/root/var/www/html
ln /home/root/var/www/html/index.html /var/www/html/index.html
exit