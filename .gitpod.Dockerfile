FROM gitpod/workspace-full:latest

RUN   sudo apt update -y \
      && sudo apt install build-essential linux-libc-dev -y \
      && sudo apt-get install libusb-dev libudev-dev -y \
      && sudo apt-get install libusb-1.0-0-dev -y \
      && sudo apt-get install mpi-default-dev openmpi-bin openmpi-common -y \
      && sudo apt-get install libpcap-dev -y \
      && sudo apt-get install libflann-dev -y \
      && sudo apt-get install libeigen3-dev -y \
      && sudo apt-get install libopenni2-dev -y \
      && sudo apt-get install libqhull7 libqhull-dev -y \
      && sudo apt-get install freeglut3-dev pkg-config -y \
      && sudo apt-get install libxmu-dev libxi-dev -y \
      && sudo apt-get install openjdk-8-jdk openjdk-8-jre -y \
      && sudo apt-get install libboost-all-dev -y \
      && sudo apt-get install libgtest-dev -y \
      && wget https://www.coin-or.org/download/source/metslib/metslib-0.5.3.tgz \
      && tar xzvf metslib-0.5.3.tgz \
      && cd metslib-0.5.3 \
      && ./configure \
      && make  \
      && sudo make install 
