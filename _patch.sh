#!/bin/bash

bindir=$(dirname "$0")

pushd "$bindir"

srcdir=./parsec-3.0

if [ ! -d $srcdir ]
then
	echo "[Error] parsec source code not found under $srcdir"
	exit 1
fi

pushd "$srcdir"

if grep --quiet "Debian GNU/Linux 12 " --quiet /etc/issue
then
	if patch -p1 -N --dry-run --slient < ../for-debian12.patch
	then
		patch -p1 < ../for-debian12.patch
	fi
	popd
	popd
	exit 0
fi

patch -p1 < ../for-ubuntu16.04.patch

if [ "$(cat /etc/issue)" = "Ubuntu 18.04.4 LTS \n \l" ];
then
	echo "This system seems Ubuntu 18.04"
	if patch -p1 -N --dry-run --slient < ../for-ubuntu18.04.patch
	then
		patch -p1 < ../for-ubuntu18.04.patch
	fi
fi

if [ "$(cat /etc/issue)" = "Ubuntu 20.04.4 LTS \n \l" ];
then
	echo "This system seems Ubuntu 20.04"
	if patch -p1 -N --dry-run --slient < ../for-ubuntu20.04.patch
	then
		patch -p1 < ../for-ubuntu20.04.patch
	fi
fi

popd

popd
