#!/bin/bash
set -e

if [ -n "$EXTRA_PYTHON_MODULES" ]; then
    echo "Installing extra python modules: $EXTRA_PYTHON_MODULES"
    pip install --no-cache-dir $EXTRA_PYTHON_MODULES
fi

# Exec the original CMD or pass all arguments
exec "$@"