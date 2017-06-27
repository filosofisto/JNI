#!/bin/bash

JNI_INCLUDE="-I/usr/lib64/jdk1.8.0_65/include -I/usr/lib64/jdk1.8.0_65/include/linux"

export LD_LIBRARY_PATH=.
echo "======================================================"
echo "Compiling Java files..."
javac Reverse.java
echo "Java files compiled"

echo "Generatinh header files..."
javah -jni Reverse
echo "Header file created"

echo "Generating native shared library..."
g++ -Wall -fPIC $JNI_INCLUDE -shared reverse.cpp -o libReverse.so
echo "Shared library created"
echo "======================================================"

echo "Testing App..."
echo ">>> Output <<<"
java Reverse
echo "======================================================"
echo
