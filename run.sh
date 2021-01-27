#!/bin/bash

if [ $# -ne 1 ];
then
	echo "Usage: $0 <workload>"
	echo ""
	echo "workload: PARSEC package.  e.g., canneal" 
	exit 1
fi

CALLEE_DIR=$(dirname "$0")
pushd "$CALLEE_DIR" > /dev/null

PARSEC_DIR=parsec-3.0

pushd "$PARSEC_DIR" > /dev/null
source ./env.sh
parsecmgmt -p "$1" -a run -i native -n 1
popd > /dev/null

popd > /dev/null
