#!/bin/sh
echo "==============================="
echo "RUN : chipyard-rhel-8-latest.sh"
echo "==============================="

# Conda
conda activate base
conda install -n base conda-lock
conda activate base

# Chipyard
mkdir ~/dev && cd ~/dev
git clone https://github.com/ucb-bar/chipyard.git
cd ~/dev/chipyard
git checkout 1.9.0
./build-setup.sh riscv-tools

echo "================================"
echo "EXIT : chipyard-rhel-8-latest.sh"
echo "================================"
