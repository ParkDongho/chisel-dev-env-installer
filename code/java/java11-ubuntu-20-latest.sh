#!/bin/sh
echo "============================="
echo "RUN : java11-ubuntu-20-latest.sh"
echo "============================="

sudo apt install openjdk-11-jre-headless -y
sudo update-alternatives --config java

echo "=============================="
echo "EXIT : java11-ubuntu-20-latest.sh"
echo "=============================="
