#!/bin/bash

function cp_with_backup {
# src=$1, dest=$2
  echo copy frile $1 to $2
  if [[ -f $2 ]]; then
    backup_name="$2`date +%Y%m%d%H%M%S`"
    echo $2 already exist backup to $backup_name
    mv $2 $backup_name
  fi
  cp $1 $2
}

function download {
# url=$1
  if [[ -f `basename $1` ]]; then
    echo "file $(basename $1) already exist."
  else
    echo "download from: $1"
    wget $1
  fi
}

function require_openjdk {
# version=$1
  if [[ `which javac`X = 'X' ]]; then
    echo install openjdk-$1-jdk
    sudo apt install -y openjdk-$1-jdk
  fi
}

function extract {
# file=$1
# dest_path=$2
  sudo tar zxf `basename $1` --directory `dirname $2`
  sudo ln -s `basename $1 .tgz` $2
} 
