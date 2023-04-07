#!/bin/sh

echo "============================"
echo "RUN : conda-rhel-8-latest.sh"
echo "============================"

# Conda
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
echo "Install Complete : Conda"

echo "Sourcing : .zshrc"

conda config --set auto_activate_base false
echo "Setup : Config"

echo "============================"
echo "Exit : conda-rhel-8-latest.sh"
echo "============================"
