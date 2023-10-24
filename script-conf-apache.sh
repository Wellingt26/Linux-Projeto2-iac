#! /bin/bash

echo "Atualizando servidor"

apt-get update
apt-get upgrade -y

echo "Instalando apache"
apt-get install apache2 -y

echo "Instalando Unzip"
apt-get install unzip -y

cd /temp

echo "baixando arquivos do site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e movendo os arquivos para pasta de destino"

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html


