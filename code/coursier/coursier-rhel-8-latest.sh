#!/bin/sh
echo "==============================="
echo "RUN : coursier-rhel-8-latest.sh"
echo "==============================="

curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs
chmod +x cs
./cs setup
rm cs

echo "================================"
echo "EXIT : coursier-rhel-8-latest.sh"
echo "================================"
