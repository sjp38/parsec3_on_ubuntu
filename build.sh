#!/bin/bash

BINDIR=`dirname $0`

pushd $BINDIR

SRCDIR=./parsec-3.0

pushd $SRCDIR

source ./env.sh
parsecmgmt -a build

popd

popd
