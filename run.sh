#!/bin/bash

if [ $# -ne 1 ];
then
	echo "Usage: $0 <workload>"
	echo ""
	echo "workload: PARSEC package.  e.g., canneal" 
	exit 1
fi

bindir=$(dirname "$0")
pushd "$bindir" > /dev/null

parsec_dir=parsec-3.0

pushd "$parsec_dir" > /dev/null
source ./env.sh
parsecmgmt -p "$1" -a run -i native -n 1
popd > /dev/null

popd > /dev/null
