#!/bin/sh
# Conda
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
conda config --set auto_activate_base false
conda install -n base conda-lock
conda activate base
