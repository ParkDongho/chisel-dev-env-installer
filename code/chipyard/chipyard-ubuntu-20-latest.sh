#!/bin/sh
source code/path/bashrc-ubuntu-20.sh

echo "==============================="
echo "RUN : chipyard-ubuntu-20-latest.sh"
echo "==============================="

# Conda
conda activate base
conda install -n base conda-lock
conda activate base

# Chipyard
mkdir ~/tools/chipyard/1.9.0/
git clone https://github.com/ucb-bar/chipyard.git ~/tools/chipyard/1.9.0
cd ~/tools/chipyard/1.9.0/
git checkout 1.9.0
./build-setup.sh riscv-tools -s 9

echo "================================"
echo "EXIT : chipyard-ubuntu-20-latest.sh"
echo "================================"
