#!/bin/bash -e
wget https://sourceware.org/systemtap/ftp/releases/systemtap-3.0.tar.gz
tar zxvf systemtap-3.0.tar.gz
cd systemtap-3.0
./configure;
make -j 2;
make install
