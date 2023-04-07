#!/bin/sh
# Conda
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh

source ~/.zshrc

conda config --set auto_activate_base false
