#!/bin/bash

TARBALL=parsec-3.0.tar.gz
SRCDIR=parsec-3.0

if [ ! -f $TARBALL ]
then
	wget http://parsec.cs.princeton.edu/download/3.0/parsec-3.0.tar.gz
fi

if [ ! -d $SRCDIR ]
then
	tar zxvf parsec-3.0.tar.gz
fi
