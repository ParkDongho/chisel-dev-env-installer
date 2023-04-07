#!/bin/sh
echo "================================"
echo "RUN : astronvim-rhel-8-latest.sh"
echo "================================"

# ASTRONVIM Prerequisite
# Tree sitter cli
sudo yum -y install cargo
#rustup update
cargo install tree-sitter-cli

# ripgrep
sudo dnf -y install ripgrep

# lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf -y install lazygit

# go DiskUsage()
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

# bottom
sudo dnf copr enable atim/bottom  -y
sudo dnf -y install bottom

# nodejs
sudo dnf groupinstall "Development Tools" -y
sudo dnf module list nodejs -y
sudo dnf module install nodejs/development -y


# ASTRONVIM
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/ParkDongho/astronvim_config ~/.config/nvim/lua/user

nvim

echo "================================="
echo "EXIT : astronvim-rhel-8-latest.sh"
echo "================================="
