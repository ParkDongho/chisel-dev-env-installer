#!/bin/sh
echo "==================================="
echo "RUN : astronvim-ubuntu-20-latest.sh"
echo "==================================="

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/share/coursier/bin"

# ASTRONVIM Prerequisite
# Tree sitter cli
cargo install tree-sitter-cli

# ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
lazygit --version

# go DiskUsage()
sudo add-apt-repository ppa:daniel-milde/gdu
sudo apt-get update
sudo apt-get install gdu

# bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.8.0/bottom_0.8.0_amd64.deb
sudo dpkg -i bottom_0.8.0_amd64.deb

# nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs


# ASTRONVIM
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/ParkDongho/astronvim_config ~/.config/nvim/lua/user

nvim

echo "===================================="
echo "EXIT : astronvim-ubuntu-20-latest.sh"
echo "===================================="
