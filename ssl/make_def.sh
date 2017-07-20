#!/bin/bash

clang -c -emit-llvm -g -o spec.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         spec.c
clang -c -emit-llvm -g -o blocksort.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         blocksort.c
clang -c -emit-llvm -g -o bzip2.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         bzip2.c
clang -c -emit-llvm -g -o bzlib.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         bzlib.c
clang -c -emit-llvm -g -o compress.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         compress.c
clang -c -emit-llvm -g -o crctable.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         crctable.c
clang -c -emit-llvm -g -o decompress.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         decompress.c
clang -c -emit-llvm -g -o huffman.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         huffman.c
clang -c -emit-llvm -g -o randtable.bc -DSPEC_CPU -DNDEBUG           -DSPEC_CPU_LP64         randtable.c
llvm-link spec.bc blocksort.bc bzip2.bc bzlib.bc compress.bc crctable.bc decompress.bc huffman.bc randtable.bc -o bzip.bc
llc -O0 -filetype=obj bzip.bc -o bzip_def.o
gcc bzip_def.o -o bzip2_def

