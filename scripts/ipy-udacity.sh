#!/bin/bash

ROOT_DIR=/vagrant
export PYTHONPATH=$ROOT_DIR/python
NOTEBOOK_DIR=../tensorflow_source/tensorflow/tensorflow/examples/udacity

ipython notebook --port=8888 --ip=0.0.0.0 --no-browser --notebook-dir=$NOTEBOOK_DIR
