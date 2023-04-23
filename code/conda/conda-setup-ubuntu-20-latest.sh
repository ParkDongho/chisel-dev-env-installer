#!/bin/sh
source code/path/bashrc-ubuntu-20.sh

echo "=================================="
echo "RUN : conda-setup-ubuntu-20-latest.sh"
echo "=================================="

conda config --set auto_activate_base false

# libmamba
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba

echo "==================================="
echo "EXIT : conda-setup-ubuntu-20-latest.sh"
echo "==================================="
