#!/bin/bash

apt update
apt upgrade -y
apt autoremove -y
apt install apache2 -y
exit