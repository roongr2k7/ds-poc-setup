#!/bin/bash
wget -q -O - http://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -

sudo echo 'deb http://pkg.jenkins.io/debian-stable binary/' >> /etc/apt/source.list
sudo echo >> /etc/apt/source.list

sudo apt-get update
sudo apt-get install jenkins
