#!/bin/bash

echo "-------------------"
echo "Updating the server" 
echo "-------------------"
sudo apt-get update
sudo apt-get upgrade -y 

echo "------------------------"
echo "Installing Apache server" 
echo "------------------------"
sudo apt-get install apache2 -y 

echo "--------------------------"
echo "Cloning the App repository" 
echo "--------------------------"
sudo git clone https://github.com/gustavomonteirodev/Projeto-Naruto-Dev-Week.git
cd Projeto-Naruto-Dev-Week
sudo cp -R * /var/www/html/

echo "-------------------------------"
echo "Exibindo o ip atual do servidor" 
echo "-------------------------------"
ip a