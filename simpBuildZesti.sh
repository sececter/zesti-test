#!/bin/bash


export C_INCLUDE_PATH=/usr/include/x86_64-linux-gnu
cd zesti

./configure --with-llvm=/home/xqx/projects/llvm-2.9 --with-stp=/home/xqx/projects/stp-r940/install  --with-uclibc=/home/xqx/projects/klee-uclibc --enable-posix-runtime

make
