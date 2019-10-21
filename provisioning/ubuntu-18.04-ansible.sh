#!/bin/bash

# install apt-add-repository
sudo apt update
sudo apt install -y software-properties-common

# add repository
sudo apt-add-repository ppa:ansible/ansible
sudo apt update

# install ansible
sudo apt install -y git ansible

# create date string
DATE=`date +%Y%m%d%H%M`

ANSIBLE_VERSION=$(ansible --version | sed -n 1p | grep ansible | awk  '{print $2}')
echo "ansible-$ANSIBLE_VERSION" > /vagrant/version
