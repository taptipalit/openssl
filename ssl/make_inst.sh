#!/bin/bash

set -x
ROOT=/home/tpalit/Documents/Projects/clang_llvm/install/bin
#GGDB=-ggdb
GGDB=-ggdb

clang -c $GGDB -emit-llvm -o s2_meth.bc s2_meth.c
clang -c $GGDB -emit-llvm -o s2_srvr.bc s2_srvr.c
clang -c $GGDB -emit-llvm -o s2_clnt.bc s2_clnt.c
clang -c $GGDB -emit-llvm -o s2_lib.bc s2_lib.c
clang -c $GGDB -emit-llvm -o s2_enc.bc s2_enc.c
clang -c $GGDB -emit-llvm -o s2_pkt.bc s2_pkt.c
clang -c $GGDB -emit-llvm -o s3_meth.bc s3_meth.c
clang -c $GGDB -emit-llvm -o s3_srvr.bc s3_srvr.c
clang -c $GGDB -emit-llvm -o s3_clnt.bc s3_clnt.c
clang -c $GGDB -emit-llvm -o s3_lib.bc s3_lib.c
clang -c $GGDB -emit-llvm -o s3_enc.bc s3_enc.c
clang -c $GGDB -emit-llvm -o s3_pkt.bc s3_pkt.c
clang -c $GGDB -emit-llvm -o s3_both.bc s3_both.c
clang -c $GGDB -emit-llvm -o s23_meth.bc s23_meth.c
clang -c $GGDB -emit-llvm -o s23_srvr.bc s23_srvr.c
clang -c $GGDB -emit-llvm -o s23_clnt.bc s23_clnt.c
clang -c $GGDB -emit-llvm -o s23_libs23_pkt.bc s23_libs23_pkt.c
clang -c $GGDB -emit-llvm -o t1_meth.bc t1_meth.c
clang -c $GGDB -emit-llvm -o t1_srvr.bc t1_srvr.c
clang -c $GGDB -emit-llvm -o t1_clnt.bc t1_clnt.c
clang -c $GGDB -emit-llvm -o t1_lib.bc t1_lib.c
clang -c $GGDB -emit-llvm -o t1_enc.bc t1_enc.c
clang -c $GGDB -emit-llvm -o d1_meth.bc d1_meth.c
clang -c $GGDB -emit-llvm -o d1_srvr.bc d1_srvr.c
clang -c $GGDB -emit-llvm -o d1_clnt.bc d1_clnt.c
clang -c $GGDB -emit-llvm -o d1_lib.bc d1_lib.c
clang -c $GGDB -emit-llvm -o d1_pkt.bc d1_pkt.c
clang -c $GGDB -emit-llvm -o d1_both.bc d1_both.c
clang -c $GGDB -emit-llvm -o d1_enc.bc d1_enc.c
clang -c $GGDB -emit-llvm -o d1_srtp.bc d1_srtp.c
clang -c $GGDB -emit-llvm -o ssl_lib.bc ssl_lib.c
clang -c $GGDB -emit-llvm -o ssl_err2.bc ssl_err2.c
clang -c $GGDB -emit-llvm -o ssl_cert.bc ssl_cert.c
clang -c $GGDB -emit-llvm -o ssl_sess.bc ssl_sess.c
clang -c $GGDB -emit-llvm -o ssl_ciph.bc ssl_ciph.c
clang -c $GGDB -emit-llvm -o ssl_stat.bc ssl_stat.c
clang -c $GGDB -emit-llvm -o ssl_rsa.bc ssl_rsa.c
clang -c $GGDB -emit-llvm -o ssl_asn1.bc ssl_asn1.c
clang -c $GGDB -emit-llvm -o ssl_txt.bc ssl_txt.c
clang -c $GGDB -emit-llvm -o ssl_algs.bc ssl_algs.c
clang -c $GGDB -emit-llvm -o bio_ssl.bc bio_ssl.c
clang -c $GGDB -emit-llvm -o ssl_err.bc ssl_err.c
clang -c $GGDB -emit-llvm -o kssl.bc kssl.c
clang -c $GGDB -emit-llvm -o tls_srp.bc tls_srp.c
clang -c $GGDB -emit-llvm -o t1_reneg .bc t1_reneg .c

llvm-link s2_meth.bc  s2_srvr.bc  s2_clnt.bc  s2_lib.bc  s2_enc.bc  s2_pkt.bc  s3_meth.bc  s3_srvr.bc  s3_clnt.bc  s3_lib.bc  s3_enc.bc  s3_pkt.bc  s3_both.bc  s23_meth.bc  s23_srvr.bc  s23_clnt.bc  s23_libs23_pkt.bc  t1_meth.bc  t1_srvr.bc  t1_clnt.bc  t1_lib.bc  t1_enc.bc  d1_meth.bc  d1_srvr.bc  d1_clnt.bc  d1_lib.bc  d1_pkt.bc  d1_both.bc  d1_enc.bc  d1_srtp.bc  ssl_lib.bc  ssl_err2.bc  ssl_cert.bc  ssl_sess.bc  ssl_ciph.bc  ssl_stat.bc  ssl_rsa.bc  ssl_asn1.bc  ssl_txt.bc  ssl_algs.bc  bio_ssl.bc  ssl_err.bc  kssl.bc  tls_srp.bc  t1_reneg .bc -o ssl.bc

$ROOT/opt -encryption ssl.bc -o ssl_inst.bc
$ROOT/llc -O0 -filetype=obj ssl_inst.bc -o ssl_inst.o
#gcc bzip_inst.o -o bzip2

