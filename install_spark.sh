#!/bin/bash

SPARK_DOWNLOAD_URL=http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz

source function.sh

if [[ `which javac`X = 'X' ]]; then
  echo install openjdk-8-jdk
  sudo apt install -y openjdk-8-jdk
fi

download $SPARK_DOWNLOAD_URL
tar zxf `basename $SPARK_DOWNLOAD_URL`
sudo mv `basename $SPARK_DOWNLOAD_URL .tgz` /opt/spark

# Assign SPARK_HOME environment variable
sudo cat > /etc/profile.d/Z11-spark-home-env.sh <<- EOF
#!/bin/sh
export SPARK_HOME=/opt/spark
EOF
sudo chmod +x /etc/profile.d/Z11-spark-home-env.sh
