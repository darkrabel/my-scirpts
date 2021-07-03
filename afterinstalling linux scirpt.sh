#! /bin/bash

sudo apt update
sudo apt upgrade
sudo apt install python3
sudo apt-get install python3-pip python-dev
pip3 install bpytop --upgrade
echo 'installing vs code '

sudo apt install software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code
echo 'git'

sudo apt install git 
##this will install  realtexw wireless adapter
sudo apt-get install build-essential git dkms linux-headers-$(uname -r)
git clone https://github.com/corneal64/Realtek-USB-Wireless-Adapter-Drivers.git
cd Realtek-USB-Wireless-Adapter-Drivers
sudo dkms add ./rtl8188fu
sudo dkms build rtl8188fu/1.0
sudo dkms install rtl8188fu/1.0
sudo cp ./rtl8188fu/firmware/rtl8188fufw.bin /lib/firmware/rtlwifi
echo 'this will install g++ compiler'
sudo apt install g++



echo 'all programing languges download'
sudo apt install nodejs
sudo apt install npm
sudo apt install php

##this will reboot system 
sudo reboot
