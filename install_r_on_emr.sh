#!/bin/bash

set -euf -o pipefail -x

sudo yum -y install gcc-gfortran libgfortran readline-devel libxml2-devel libcurl-devel pcre2-devel bzip2-devel xz-devel
wget https://cran.r-project.org/src/base/R-4/R-4.0.0.tar.gz
tar xf R-4.0.0.tar.gz
cd R-4.0.0
./configure --prefix=/usr --with-x=no
make -j4
sudo make install
