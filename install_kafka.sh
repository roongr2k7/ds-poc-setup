#!/bin/bash
source function.sh

KAFKA_DOWNLOAD_URL=http://www-eu.apache.org/dist/kafka/0.10.1.1/kafka_2.11-0.10.1.1.tgz

require_openjdk 8
download $KAFKA_DOWNLOAD_URL
extract $KAFKA_DOWNLOAD_URL /opt/kafka
