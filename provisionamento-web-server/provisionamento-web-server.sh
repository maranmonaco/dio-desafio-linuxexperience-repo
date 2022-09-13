#! /bin/bash

echo "Atualizando o servidor"
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Removendo o arquivo index padrão"
cd /var/www/html
rm index.html

echo "Download e direcionamento dos arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Pronto, verifique o IP em seu navegador"