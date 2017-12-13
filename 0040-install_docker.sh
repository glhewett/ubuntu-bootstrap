#!/bin/sh

# Reference Article:
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

# install dependencies
sudo apt install -y curl

# Add Docker GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add docker source
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# update source
sudo apt update -y

# install docker
apt-cache policy docker-ce
sudo apt install -y docker-ce

# add your user to the docker group (removes need for sudo)
sudo usermod -aG docker ${USER}

