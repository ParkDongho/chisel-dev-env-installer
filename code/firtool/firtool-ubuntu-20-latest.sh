wget https://github.com/llvm/circt/releases/download/firtool-1.39.0/firrtl-bin-ubuntu-20.04.tar.gz
tar -zxvf firrtl-bin-ubuntu-20.04.tar.gz
sudo cp ./firtool-1.39.0/bin/firtool /usr/bin/firtool
rm -rf firrtl-bin-ubuntu-20.04.tar.gz firtool-1.39.0
