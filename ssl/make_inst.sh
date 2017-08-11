#!/bin/bash
rm *.bc *.ll

set -x
ROOT=/home/tpalit/Documents/Projects/clang_llvm/install/bin
#GGDB=-ggdb
GGDB=-ggdb


clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s2_meth.ll s2_meth.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s2_srvr.ll s2_srvr.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s2_clnt.ll s2_clnt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s2_lib.ll s2_lib.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s2_enc.ll s2_enc.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s2_pkt.ll s2_pkt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_meth.ll s3_meth.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_srvr.ll s3_srvr.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_clnt.ll s3_clnt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_lib.ll s3_lib.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_enc.ll s3_enc.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_pkt.ll s3_pkt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s3_both.ll s3_both.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s23_meth.ll s23_meth.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s23_srvr.ll s23_srvr.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s23_clnt.ll s23_clnt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s23_lib.ll s23_lib.c 
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o s23_pkt.ll s23_pkt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o t1_meth.ll t1_meth.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o t1_srvr.ll t1_srvr.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o t1_clnt.ll t1_clnt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o t1_lib.ll t1_lib.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o t1_enc.ll t1_enc.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_meth.ll d1_meth.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_srvr.ll d1_srvr.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_clnt.ll d1_clnt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_lib.ll d1_lib.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_pkt.ll d1_pkt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_both.ll d1_both.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_enc.ll d1_enc.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o d1_srtp.ll d1_srtp.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_lib.ll ssl_lib.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_err2.ll ssl_err2.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_cert.ll ssl_cert.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_sess.ll ssl_sess.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_ciph.ll ssl_ciph.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_stat.ll ssl_stat.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_rsa.ll ssl_rsa.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_asn1.ll ssl_asn1.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_txt.ll ssl_txt.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_algs.ll ssl_algs.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o bio_ssl.ll bio_ssl.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o ssl_err.ll ssl_err.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o kssl.ll kssl.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o tls_srp.ll tls_srp.c
clang -I../crypto -I.. -I../include  -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN -DTERMIO -c $GGDB -emit-llvm -S -o t1_reneg.ll t1_reneg.c

llvm-link s2_meth.ll  s2_srvr.ll  s2_clnt.ll  s2_lib.ll  s2_enc.ll  s2_pkt.ll  s3_meth.ll  s3_srvr.ll  s3_clnt.ll  s3_lib.ll  s3_enc.ll  s3_pkt.ll  s3_both.ll  s23_meth.ll  s23_srvr.ll  s23_clnt.ll  s23_lib.ll s23_pkt.ll  t1_meth.ll  t1_srvr.ll  t1_clnt.ll  t1_lib.ll  t1_enc.ll  d1_meth.ll  d1_srvr.ll  d1_clnt.ll  d1_lib.ll  d1_pkt.ll  d1_both.ll  d1_enc.ll  d1_srtp.ll  ssl_lib.ll  ssl_err2.ll  ssl_cert.ll  ssl_sess.ll  ssl_ciph.ll  ssl_stat.ll  ssl_rsa.ll  ssl_asn1.ll  ssl_txt.ll  ssl_algs.ll  bio_ssl.ll  ssl_err.ll  kssl.ll  tls_srp.ll  t1_reneg.ll -o ssl.bc

$ROOT/opt -encryption -aes-enc-cache -debug ssl.bc -o ssl_inst.bc > out 2>&1
$ROOT/llc -O0 -filetype=obj ssl_inst.bc -o ssl_inst.o
#gcc bzip_inst.o -o bzip2
ar r libsslinst.a ssl_inst.o
ranlib libsslinst.a
