#!/bin/bash
echo "================================"
echo "RUN : default-ubuntu-20.sh"
echo "================================"

sudo apt-get -y install net-tools vim make openssh-server \
  zsh firewalld gcc git perl python3 make autoconf flex bison numactl wget \
  libncurses5 libtinfo5 libncurses5-dev libncursesw5-dev

# sudo apt-get -y openssl-devel bzip2-devel libffi-devel zlib-devel ncurses-compat-libs sqlite-devel

echo "================================"
echo "EXIT : default-ubuntu-20.sh"
echo "================================"
