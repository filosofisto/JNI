#!/bin/bash

JNI_INCLUDE="-I/usr/lib64/jdk1.8.0_65/include -I/usr/lib64/jdk1.8.0_65/include/linux"

export LD_LIBRARY_PATH=.
echo "======================================================"
echo "Compiling Java files..."
time javac NativeMethods.java Main.java Main2.java
echo "Java files compiled"

echo "Generatinh header files..."
time javah -jni NativeMethods
echo "Header file created"

echo "Generating native shared library..."
time gcc $JNI_INCLUDE -fPIC -shared cImplOne.c cImplTwo.c -o libNativeLib.so
echo "Shared library created"
echo "======================================================"

echo "Testing App..."
echo ">>> Output <<<"
time java Main
time java Main2
echo "======================================================"
echo
