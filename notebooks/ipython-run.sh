#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ROOT_DIR=/vagrant
export PYTHONPATH=$ROOT_DIR/python
ipython notebook --port=8888 --ip=0.0.0.0 --no-browser --notebook-dir=$ROOT_DIR/notebooks
