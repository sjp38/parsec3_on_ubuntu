#!/bin/bash

BINDIR=$(dirname $0)
cd "$BINDIR"

./_install_deps.sh
./_getsrc.sh
./_patch.sh
./_build.sh $1
