#!/bin/bash
echo "================================="
echo "RUN : diagrammer-ubuntu-20-latest.sh"
echo "================================="

sudo yum -y install graphviz
rm -rf ~/.diagrammer
git clone https://github.com/freechipsproject/diagrammer ~/.diagrammer

echo "==================================="
echo "EXIT : diagrammer-ubuntu-20-latest.sh"
echo "==================================="
