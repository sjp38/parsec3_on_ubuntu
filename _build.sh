#!/bin/bash

BINDIR=`dirname $0`

pushd $BINDIR

SRCDIR=./parsec-3.0

pushd $SRCDIR

source ./env.sh

if [ $# -gt 0 ]
then
	parsecmgmt -a build -p $1
else
	parsecmgmt -a build
fi

popd

popd
