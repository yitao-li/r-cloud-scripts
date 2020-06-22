#!/bin/bash

set -euf -o pipefail -x

sudo apt-get update
sudo apt-get install -y gfortran libreadline-dev libxml2-dev libcurl4-openssl-dev libpcre2-dev libbz2-dev liblzma-dev
wget https://cran.r-project.org/src/base/R-4/R-4.0.0.tar.gz
tar xf R-4.0.0.tar.gz
cd R-4.0.0
./configure --prefix=/usr --with-x=no
make -j4
sudo make install
