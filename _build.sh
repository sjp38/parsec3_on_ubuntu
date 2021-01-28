#!/bin/bash

bindir=$(dirname "$0")

pushd "$bindir"

srcdir=./parsec-3.0

pushd "$srcdir"

source ./env.sh

if [ $# -gt 0 ]
then
	parsecmgmt -a build -p "$1"
else
	parsecmgmt -a build
fi

popd

popd
