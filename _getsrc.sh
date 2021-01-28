#!/bin/bash

tarball=parsec-3.0.tar.gz
srcdir=parsec-3.0

if [ ! -f $tarball ]
then
	wget http://parsec.cs.princeton.edu/download/3.0/parsec-3.0.tar.gz
fi

if [ ! -d $srcdir ]
then
	tar zxvf parsec-3.0.tar.gz
fi
