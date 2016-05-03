#!/bin/sh

ANACONDA_URL=http://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh
ANACONDA_SCRIPT=`basename $ANACONDA_URL`

if [ ! -f "./$ANACONDA_SCRIPT" ] ; then
  wget $ANACONDA_URL
fi

bash $ANACONDA_SCRIPT
