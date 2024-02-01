#!/bin/bash

set -e

bindir=$(dirname "$0")

pushd "$bindir"

srcdir=./parsec-3.0

pushd "$srcdir"

source ./env.sh

if [ $# -gt 0 ]
then
	parsecmgmt -a build -p "$1"
else
	if grep --quiet "Debian GNU/Linux 12 " /etc/issue
	then
		# On the distro, building bodytrack, dedup, facesim, and
		# splash2x.raytrace fails.  Just don't use those for now.
		for workload in blackscholes canneal facesim fluidanimate \
			freqmine raytrace streamcluster vips x264
		do
			parsecmgmt -a build -p "$workload"
		done

		for workload in barnes fft lu_cb lu_ncb ocean_cp ocean_ncp \
			radiosity radix volrend water_nsquared water_spatial
		do
			parsecmgmt -a build -p "splash2x.$workload"
		done
	else
		parsecmgmt -a build
	fi
fi

popd

popd
