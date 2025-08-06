#!/bin/bash
set -e

if [ -n "$EXTRA_PYTHON_MODULES" ]; then
    echo "Installing extra python modules: $EXTRA_PYTHON_MODULES"
    pip3 install --no-cache-dir $EXTRA_PYTHON_MODULES
fi

exec bash ./start.sh