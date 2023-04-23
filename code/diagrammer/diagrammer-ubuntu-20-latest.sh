#!/bin/bash
echo "================================="
echo "RUN : diagrammer-ubuntu-20-latest.sh"
echo "================================="

sudo apt-get -y install graphviz
mkdir ~/tools/
rm -rf ~/tools/diagrammer
git clone https://github.com/freechipsproject/diagrammer ~/tools/diagrammer

echo "==================================="
echo "EXIT : diagrammer-ubuntu-20-latest.sh"
echo "==================================="
