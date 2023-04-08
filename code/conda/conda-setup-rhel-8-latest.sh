#!/bin/sh

echo "=================================="
echo "RUN : conda-setup-rhel-8-latest.sh"
echo "=================================="

source ~/.bashrc

conda config --set auto_activate_base false

# libmamba
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba

echo "==================================="
echo "EXIT : conda-setup-rhel-8-latest.sh"
echo "==================================="
