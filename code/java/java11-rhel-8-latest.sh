#!/bin/sh
echo "============================="
echo "RUN : java11-rhel-8-latest.sh"
echo "============================="

sudo yum -y install java-11-openjdk-devel.x86_64
sudo update-alternatives --config java

echo "=============================="
echo "EXIT : java11-rhel-8-latest.sh"
echo "=============================="
