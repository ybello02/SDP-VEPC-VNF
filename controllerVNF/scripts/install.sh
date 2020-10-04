#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install -y curl git mysql-server openssl openssh-server
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
