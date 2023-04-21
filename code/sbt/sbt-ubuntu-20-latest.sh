#!/bin/sh
source ../path/bashrc-ubuntu-20.sh

echo "=========================="
echo "RUN : sbt-ubuntu-20-latest.sh"
echo "=========================="

# Install sbt with cs setup
cs setup
sbt --script-version

echo "==========================="
echo "EXIT : sbt-ubuntu-20-latest.sh"
echo "==========================="



# sudo rm -f /etc/yum.repos.d/bintray-rpm.repo || true
# curl -L https://www.scala-sbt.org/sbt-rpm.repo > sbt-rpm.repo
# sudo mv sbt-rpm.repo /etc/yum.repos.d/
# sudo yum -y install sbt

