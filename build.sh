#!/bin/bash

bindir=$(dirname $0)
cd "$bindir"

./_install_deps.sh
./_getsrc.sh
./_patch.sh
./_build.sh $1
