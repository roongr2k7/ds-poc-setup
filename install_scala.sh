#!/bin/bash

wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz
tar zxvf scala-2.11.8.tgz
sudo mv scala-2.11.8/ /opt/scala-2.11.8

echo 'export SCALA_HOME=/opt/scala-2.11.8' >> /etc/environment
echo 'export PATH=$PATH:$SCALA_HOME/bin' >> /etc/environment
source /etc/environment
