#!/bin/bash

echo " "
echo "-------------------------------"
echo " "
echo "Instalacion Automatica de Login."
echo "Developed by Jesus Dev and g0dsp."
echo " "
echo "-------------------------------"
sleep 5
echo "-------------------------------"
echo " "
echo "Descargando archivos"
echo " "
echo "-------------------------------"
git clone https://github.com/keahi32/login
echo "-------------------------------"
echo " "
echo "Preparando archivos"
echo " "
echo "-------------------------------"
mv /login/* /app
manolo=172.17.0.1
sed -i 's/^$HOST=".*"/$HOST="'$manolo'"/g' /app/config.php
echo "-------------------------------"
echo " "
echo "Instalando Monitor"
echo " "
echo "-------------------------------"
git clone https://github.com/keahi32/phpsysinfologin &>/dev/null
mkdir -p /app/monitor
mv phpsysinfologin/* /app/monitor &>/dev/null
cp /app/monitor/phpsysinfo.ini.new /app/monitor/phpsysinfo.ini &>/dev/null
echo "-------------------------------"
echo " "
echo "Docker Configurado"
echo " "
echo "-------------------------------"

