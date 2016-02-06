#!/bin/python
from __future__ import print_function
import tensorflow as tf

print('tensorflow version: {}'.format(tf.__version__))

hello = tf.constant('Hello, TensorFlow!')

sess = tf.Session()
print(sess.run(hello))

a = tf.constant(10)
b = tf.constant(32)
print(sess.run(a+b))
