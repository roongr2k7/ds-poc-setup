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
