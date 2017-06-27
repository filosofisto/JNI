#!/bin/bash

JNI_INCLUDE="-I/usr/lib64/jdk1.8.0_65/include -I/usr/lib64/jdk1.8.0_65/include/linux"

export LD_LIBRARY_PATH=.
echo "======================================================"
echo "Compiling Java files..."
javac Compute.java
echo "Java files compiled"

echo "Generatinh header files..."
javah -jni Compute
echo "Header file created"

echo "Generating native shared library..."
gcc $JNI_INCLUDE -fPIC -shared Compute.c -o libComputeJNI.so
echo "Shared library created"
echo "======================================================"

echo "Testing App..."
echo ">>> Output <<<"
java Compute
echo "======================================================"
echo
