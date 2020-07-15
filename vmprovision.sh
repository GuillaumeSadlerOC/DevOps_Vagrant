#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade

# DOCKER INSTALL
sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get -y update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# DOCKER COMPOSE INSTALL
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# VIM INSTALL (TEXT EDITOR)
sudo apt-get -y install vim

# ANSIBLE INSTALL
sudo apt-get -y update
sudo apt-get -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get -y  install ansible
