#!/usr/bin/bash

apt update
apt upgrade -y
apt autoremove -y
apt install systemctl -y
apt install nginx -y
systemctl enable nginx
mv /home/root/etc/apache2/sites-available/nginx.conf /etc/nginx/nginx.conf
exit