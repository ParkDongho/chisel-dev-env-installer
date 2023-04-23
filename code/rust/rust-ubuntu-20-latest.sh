#!/bin/sh
source code/path/bashrc-ubuntu-20.sh

echo "==========================="
echo "RUN : rust-ubuntu-20-latest.sh"
echo "==========================="

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#!/bin/sh
echo "============================"
echo "EXIT : rust-ubuntu-20-latest.sh"
echo "============================"
