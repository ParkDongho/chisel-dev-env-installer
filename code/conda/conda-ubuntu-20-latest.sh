#!/bin/sh

echo "============================"
echo "RUN : conda-ubuntu-20-latest.sh"
echo "============================"

sudo apt-get install wget -y

# Conda
# wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
wget https://github.com/conda-forge/miniforge/releases/download/4.12.0-2/Mambaforge-Linux-x86_64.sh
bash Mambaforge-Linux-x86_64.sh
rm Mambaforge-Linux-x86_64.sh

echo "============================"
echo "Exit : conda-ubuntu-20-latest.sh"
echo "============================"
