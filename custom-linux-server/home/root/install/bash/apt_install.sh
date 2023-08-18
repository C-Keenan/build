#!/usr/bin/bash

apt update
apt upgrade -y
apt autoremove -y
apt install systemctl -y
apt install tasksel -y
apt install lamp-server -y
apt install curl -y
apt install apache2 -y
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo 'FROM php:7.4.3-alpine' > php.Dockerfile
docker-php-ext-install mysqli pdo pdo_mysql
cd ~/docker/lamp
touch docker-compose.yml

apt install ufw -y
mkdir -p /home/root/var/www/html/game-guides-and-how-tos
mkdir -p /home/root/var/www/html/images
mkdir -p /home/root/var/www/html/static/css
mkdir -p /home/root/etc/apache2/sites-available
rm /etc/apache2/sites-available/000-default.conf
cp /home/root/etc/apache2/sites-available/www.conf /etc/apache2/sites-available/www.conf
rm /var/www/html/index.html
cp /home/root/var/www/html/index.html /var/www/html/index.html
cp /home/root/var/www/static/css/styles.css /var/www/static/css/styles.css
cp /home/root/var/www/html/about.html /var/www/html/about.html
cp /home/root/var/www/html/blog.html /var/www/html/blog.html
cp /home/root/var/www/html/contact.html /var/www/html/contact.html
cp /home/root/var/www/html/favicon.ico /var/www/html/favicon.ico
cp /home/root/var/www/html/images.html /var/www/html/images.html
cp /home/root/var/www/html/music.html /var/www/html/music.html
cp /home/root/var/www/html/projects.html /var/www/html/projects.html
cp /home/root/var/www/html/recipes.html /var/www/html/recipes.html
cp /home/root/var/www/html/videos.html /var/www/html/videos.html
ufw allow 80
ufw enable -y
systemctl enable apache2
exit