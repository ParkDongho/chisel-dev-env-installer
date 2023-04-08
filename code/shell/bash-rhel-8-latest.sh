#!/bin/sh
echo "==========================="
echo "RUN : bash-rhel-8-latest.sh"
echo "==========================="

chsh -s /bin/bash
cp ./.bashrc ~/.bashrc
source ~/.bashrc

echo "============================"
echo "EXIT : bash-rhel-8-latest.sh"
echo "============================"
