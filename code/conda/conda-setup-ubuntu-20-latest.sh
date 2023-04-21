#!/bin/sh

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/share/coursier/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
   eval "$__conda_setup"
else
   if [ -f "$HOME/mambaforge/etc/profile.d/conda.sh" ]; then
       . "$HOME/mambaforge/etc/profile.d/conda.sh"
   else
       export PATH="$HOME/mambaforge/bin:$PATH"
   fi
fi
unset __conda_setup

if [ -f "$HOME/mambaforge/etc/profile.d/mamba.sh" ]; then
   . "$HOME/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

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
