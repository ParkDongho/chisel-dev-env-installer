sudo yum -y install net-tools vim make openssh-server \
  zsh firewalld gcc yum-utils openssl-devel bzip2-devel \
  libffi-devel zlib-devel ncurses-compat-libs sqlite-devel \
  tigervnc-server xrdp git perl python3 make autoconf flex \
  bison numactl wget
sudo yum -y groupinstall "Development Tools"
