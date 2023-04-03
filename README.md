dev-env-auto-install
===
Development Environment Auto-Installer for Chisel and FPGAs

# How to Use It
```bash
sudo yum install git
git clone https://github.com/ParkDongho/dev-env-auto-install
cd dev-env-auto-install/<os-type>/<os-version>
chmod 700 install.sh
./install.sh
```


# Supported Operating Systems
## RHEL / CentOS / Rocky

| Versions   |     Chisel     | Chipyard     | FireSim      | Nvim         | AstroNVIM    | Nvim-Metal |
| ---------- |:--------------:| ------------ | ------------ | ------------ | ------------ |------------|
| 9.x        |   not tested   | not tested   | not tested   | not tested   | not tested   |not tested  |
| 8.x        | [3.6.0-RC2](https://github.com/chipsalliance/chisel/releases/tag/v3.6.0-RC2)    | [1.9.0](https://github.com/ucb-bar/chipyard/releases/tag/1.9.0)       | not tested   | [v0.8.0](https://src.fedoraproject.org/rpms/neovim)     | [v3.7.0](https://github.com/AstroNvim/AstroNvim/releases/tag/v3.7.0)      |            |
| 7.x        | [3.6.0-RC2](https://github.com/chipsalliance/chisel/releases/tag/v3.6.0-RC2)    | [1.9.0](https://github.com/ucb-bar/chipyard/releases/tag/1.9.0)       | not tested   | yes          | no           |            |

> **Note**
> Xilinx [FPGA Developer AMI](https://aws.amazon.com/marketplace/pp/prodview-gimv3gqbpe57k) : CentOS 7.x

## Ubuntu
| Versions |   Chisel   |  Chipyard  |  FireSim   |    Nvim    | AstroNVIM  |
|:--------:|:----------:|:----------:|:----------:|:----------:|:----------:|
|  22.xx   | not tested | not tested | not tested | not tested | not tested |
|  20.xx   | not tested | not tested | not tested | not tested | not tested |
|  18.xx   | not tested | not tested | not tested | not tested | not tested |
