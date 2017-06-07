FROM jenkins:latest

USER root
RUN echo 'deb http://repos.mesosphere.io/ubuntu trusty main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E56151BF
RUN apt-get update
RUN apt-get install -y mesos=1.1.0-2.0.107.ubuntu1404
RUN apt-get install -y build-essential

ENV MESOS_NATIVE_JAVA_LIBRARY=/usr/lib/libmesos.so
