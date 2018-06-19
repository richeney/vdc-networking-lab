#!/bin/bash

## Replaces VDC VMs' default .bashrc with the one in Adam's VDC repo

[[ ! -f ~/.bashrc.orig ]] && cp -p ~/.bashrc ~/.bashrc.orig
curl --silent https://raw.githubusercontent.com/Araffe/vdc-networking-lab/master/.bashrc > ~/.bashrc && source ~/.bashrc

# Update system
sudo apt-get update

# Install node.js & NPM
sudo apt-get install npm -y
sudo apt-get install nodejs-legacy -y

# Clone Git repo for demo app
git clone https://github.com/benc-uk/nodejs-demoapp.git
cd nodejs-demoapp/
sudo npm install forever -g
sudo npm install
forever start ./bin/www