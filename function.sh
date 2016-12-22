#!/bin/bash

function download {
# url=$1
  if [[ -f `basename $1` ]]; then
    echo "file $(basename $1) already exist."
  else
    echo "download from: $1"
    wget $1
  fi
}
