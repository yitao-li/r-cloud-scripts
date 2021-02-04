#!/bin/bash

set -euf -o pipefail -x

RVERSION='R-4.0.3'

sudo apt-get update
sudo apt-get install -y gfortran libreadline-dev libxml2-dev libcurl4-openssl-dev libpcre2-dev libbz2-dev liblzma-dev
wget "https://cran.r-project.org/src/base/R-4/${RVERSION}.tar.gz"
tar xf "${RVERSION}.tar.gz"
cd ${RVERSION}
./configure --prefix=/usr --with-x=no --enable-R-shlib
make -j4
sudo make install
