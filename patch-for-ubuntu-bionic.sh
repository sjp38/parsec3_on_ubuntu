#!/bin/bash

BINDIR=`dirname $0`

pushd $BINDIR

SRCDIR=./parsec-3.0

if [ ! -d $SRCDIR ]
then
	echo "[Error] parsec source code not found under $SRCDIR"
	exit 1
fi

pushd $SRCDIR
patch -p1 < ../for-ubuntu16.04.patch
patch -p1 < ../for-ubuntu18.04.patch
popd

popd
