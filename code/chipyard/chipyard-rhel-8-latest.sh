#!/bin/sh
echo "==============================="
echo "RUN : chipyard-rhel-8-latest.sh"
echo "==============================="

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

# Conda
conda activate base
conda install -n base conda-lock
conda activate base

# Chipyard
mkdir ~/dev 
git clone https://github.com/ucb-bar/chipyard.git ~/dev/chipyard
cd ~/dev/chipyard
git checkout 1.9.0
./build-setup.sh riscv-tools

echo "================================"
echo "EXIT : chipyard-rhel-8-latest.sh"
echo "================================"
