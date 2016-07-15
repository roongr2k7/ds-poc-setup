#!/bin/bash

sudo curl -O https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
sudo tar -xvf go1.6.linux-amd64.tar.gz
sudo mv go /usr/local
echo 'export GOPATH=$HOME/go' >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile
