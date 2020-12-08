#!/bin/bash

set -euf -o pipefail -x

RVERSION='R-4.0.3'

sudo yum -y install gcc-gfortran libgfortran readline-devel libxml2-devel libcurl-devel pcre2-devel bzip2-devel xz-devel
wget "https://cran.r-project.org/src/base/R-4/${RVERSION}.tar.gz"
tar xf "${RVERSION}.tar.gz"
cd ${RVERSION}
./configure --prefix=/usr --with-x=no --enable-R-shlib
make -j4
sudo make install
