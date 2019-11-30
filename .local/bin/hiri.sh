#!/bin/bash

#SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTDIR=$HOME/.hiri

if [[ -n "$LD_LIBRARY_PATH" ]]; then
  LD_LIBRARY_PATH="$SCRIPTDIR:$LD_LIBRARY_PATH"
else
  LD_LIBRARY_PATH="$SCRIPTDIR"
fi

export LD_LIBRARY_PATH

"$SCRIPTDIR/hirimain" $@
