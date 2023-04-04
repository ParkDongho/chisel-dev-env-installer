# ASTRONVIM Prerequisite
# Tree sitter cli
sudo yum install cargo
rustup update
cargo install tree-sitter-cli

# ripgrep
sudo dnf install ripgrep

# lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

# go DiskUsage()
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
mv gdu_linux_amd64 /usr/bin/gdu

# bottom
sudo dnf copr enable atim/bottom -y
sudo dnf install bottom

# nodejs
sudo dnf groupinstall "Development Tools"
sudo dnf module list nodejs
sudo dnf module install nodejs/development


# ASTRONVIM
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/ParkDongho/astronvim_config ~/.config/nvim/lua/user

nvim
