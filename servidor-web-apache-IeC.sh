#!/bin/bash

echo "Atualizando Sistema Operacional:"

apt update
apt upgrade -y 

echo "Instalando Servidor Apache:"

apt install apache2 -y

echo "Removendo antecipadamente a pasta index.html da pasta /var/www/html/"

rm /var/www/html/index.html

echo "Instalando Descompactador de arquivos (Unzip):"

apt install unzip -y

echo "Baixando aplicação disponível na pasta temp"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando a pasta baixada"

unzip -qo /tmp/main.zip -d /tmp

echo "Acessando a pasta e movendo os arquivos para a pasta /var/www/html:"

cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "REALIZADO!"
