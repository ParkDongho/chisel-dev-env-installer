dev-env-auto-install
===
Development Environment Auto-Installer for Chisel and FPGAs

# Supported Operating Systems
## RHEL or CentOS

| Versions | Chisel | Chipyard | Chisel  | Nvim | Metal |
|:--------:|:------:|:--------:|:-------:|:----:|:-----:|
|   8.5    |        |          |         |      |       |
|   8.6    |  yes   |   yes    |   yes   | yes  |  yes  |
|   8.7    |        |          |         |      |       |
|   8.8    |        |          |         |      |       |
|   8.9    |        |          |         |      |       |

## Ubuntu

# How to Use It
```bash
sudo yum install git
git clone https://github.com/ParkDongho/dev-env-auto-install
cd dev-env-auto-install/<os-version>
chmod 700 install.sh
./install.sh
```
