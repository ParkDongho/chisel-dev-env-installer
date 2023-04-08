
conda config --set auto_activate_base false

# libmamba
conda update -n base conda
conda install -n base conda-libmamba-solver
conda config --set solver libmamba
