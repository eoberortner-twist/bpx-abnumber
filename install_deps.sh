#!/bin/sh

if [ -d deps ];
then
	rm -Rf deps
fi

mkdir deps
cd deps

#
# HMMER
#
git clone https://github.com/EddyRivasLab/hmmer
cd hmmer
git clone https://github.com/EddyRivasLab/easel
autoconf
./configure
make

cd ..

#
# ANARCI
#
git clone git@github.com:oxpig/ANARCI.git
cd ANARCI
python setup.py install

cd ..

