#!/bin/sh
echo "==============================="
echo "RUN : coursier-rhel-8-latest.sh"
echo "==============================="

curl -fL "https://github.com/coursier/coursier/releases/download/v2.1.0/cs-x86_64-pc-linux.gz" | gzip -d > cs
chmod +x cs
./cs setup
rm cs

echo "================================"
echo "EXIT : coursier-rhel-8-latest.sh"
echo "================================"
