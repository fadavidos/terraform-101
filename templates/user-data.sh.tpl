#!/bin/bash

sudo apt-get update
sudo apt-get install apache2
cd /var/www/html
sudo rm index.html
cd ..
sudo chmod 777 html/
cd html
echo ${mensajeHolaMundo} >> index.html