#!/bin/bash
echo "================================"
echo "RUN : xrdp-ubuntu-20.sh"
echo "================================"

sudo apt install xrdp
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert

echo "================================"
echo "EXIT : xrdp-ubuntu-20.sh"
echo "================================"
