#!/bin/sh
# Chipyard
cd
mkdir dev 
cd ~/dev
git clone https://github.com/ucb-bar/chipyard.git
cd ~/dev/chipyard
git checkout 1.9.0
./build-setup.sh riscv-tools

