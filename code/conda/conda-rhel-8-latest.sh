#!/bin/sh

echo "============================"
echo "RUN : conda-rhel-8-latest.sh"
echo "============================"

# Conda
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
rm Mambaforge-Linux-x86_64.sh

conda config --set auto_activate_base false

# libmamba
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba


echo "============================"
echo "Exit : conda-rhel-8-latest.sh"
echo "============================"
