#!/bin/sh
echo "==========================="
echo "RUN : rust-ubuntu-20-latest.sh"
echo "==========================="

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

#!/bin/sh
echo "============================"
echo "EXIT : rust-ubuntu-20-latest.sh"
echo "============================"
