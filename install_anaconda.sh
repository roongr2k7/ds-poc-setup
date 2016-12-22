#!/bin/bash

ANACONDA_VERSION=4.2.0
ANACONDA_INSTALLER=Anaconda3-$ANACONDA_VERSION-Linux-x86_64.sh
ANACONDA_INSTALLER_URL=https://repo.continuum.io/archive/$ANACONDA_INSTALLER

source function.sh

function require_spark {
  if [[ ! -d /opt/spark ]]; then
    echo 'SPARK NOT FOUND'
    if [[ $1 = '-y' ]]; then
      accept='yes'
    else
      echo 'do you want to install Spark? [yes|no]'
      read accept
    fi

    if [[ $accept = 'yes' ]]; then
      ./install_spark.sh
    elif [[ $accept = 'no' ]]; then
      echo 'you need to install spark manually'
    else
      require_spark
    fi
  fi
}



require_spark $1
download $ANACONDA_INSTALLER_URL
if [[ ! -d /opt/anaconda ]]; then
  sudo bash $ANACONDA_INSTALLER -b -p /opt/anaconda
fi

echo 'export PATH="/opt/anaconda/bin:$PATH"' | sudo tee /etc/profile.d/anaconda.sh
cp_with_backup /opt/spark/conf/spark-env.sh.template /opt/spark/conf/spark-env.sh
echo 'export PYSPARK_PYTHON=/opt/anaconda/bin/python3.5' | sudo tee -a /opt/spark/conf/spark-env.sh
