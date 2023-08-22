#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando pacotes..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Instalado apache 2 e unzip"

echo "baixando repositorio..."
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cp -R linux-site-dio-main/* /var/www/html

