#!/bin/sh
echo "==========================="
echo "RUN : nvim-rhel-8-latest.sh"
echo "==========================="

sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y neovim python3-neovim

echo "============================"
echo "EXIT : nvim-rhel-8-latest.sh"
echo "============================"
