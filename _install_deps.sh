#!/bin/bash

for pkg in libx11-dev libxext-dev libxmu-dev libxi-dev libtbb-dev \
	libtbb2 tbb-examples gcc-5 g++-5 gettext autoconf texinfo pkg-config
do
	sudo apt-get install -y "$pkg"
done
