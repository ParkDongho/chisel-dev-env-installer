echo "================================="
echo "RUN : diagrammer-rhel-8-latest.sh"
echo "================================="

sudo yum -y install graphviz
rm -rf ~/.diagrammer
git clone https://github.com/freechipsproject/diagrammer ~/.diagrammer

echo "==================================="
echo "EXIT : diagrammer-rhel-8-latest.sh"
echo "==================================="
