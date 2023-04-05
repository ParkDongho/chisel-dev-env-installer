dev-env-auto-install
===
Development Environment Auto-Installer for Chisel and Chipyard

# How to Use It
## RHEL 
```bash
sudo yum -y install git make
git clone https://github.com/ParkDongho/dev-env-auto-install
cd dev-env-auto-install
make all
```


# Supported Operating Systems
## RHEL / CentOS / Rocky

| Versions |   Chisel   |  Chipyard  |  FireSim   |    Nvim    | AstroNVIM  |
|:--------:|:----------:|:----------:|:----------:|:----------:|:----------:|
|   9.x    | not tested | not tested | not tested | not tested | not tested |
|   8.x    |     ✅      |     ✅     | not tested |     ✅     |     ✅     |
|   7.x    |     ✅      |     ✅     | not tested |     ✅     |     ❌     |



> **Note**
> Xilinx [FPGA Developer AMI](https://aws.amazon.com/marketplace/pp/prodview-gimv3gqbpe57k) : CentOS 7.5

## Ubuntu
| Versions |   Chisel   |  Chipyard  |  FireSim   |    Nvim    | AstroNVIM  |
|:--------:|:----------:|:----------:|:----------:|:----------:|:----------:|
|  22.xx   | not tested | not tested | not tested | not tested | not tested |
|  20.xx   | not tested | not tested | not tested | not tested | not tested |
|  18.xx   | not tested | not tested | not tested | not tested | not tested |
