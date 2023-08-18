#!/usr/bin/bash

apt update
apt upgrade -y
apt autoremove -y
apt install systemctl -y
apt install tasksel -y
apt install lamp-server -y
apt install curl -y
apt install apache2 -y
apt install php libapache2-mod-php -y
apt install mysql-server -y
apt install libapache2-mod-auth-pysql phpmyadmin -y
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo 'FROM php:7.4.3-alpine' > php.Dockerfile
docker-php-ext-install mysqli pdo pdo_mysql
cd ~/docker/lamp
touch docker-compose.yml
apt install ufw -y
ufw allow 80
ufw allow 443
ufw enable -y
systemctl enable apache2
exit