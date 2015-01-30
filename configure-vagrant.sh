#!/bin/sh

rsync -a /vagrant/netmap_source ~/
cd ~/netmap_source/LINUX
./configure --kernel-dir=/home/vagrant/kernel/build --kernel-sources=/usr/src/linux-3.14.28 --install-mod-path=/ --driver-suffix='nm-'
make
sudo make install
cd ../examples
make
mkdir ~/netmapbin
cp bridge ~/netmapbin
cp pkt-gen ~/netmapbin

