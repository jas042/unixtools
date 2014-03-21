#!/bin/bash

##
# Vars
#
SRC="/root/tmp/torque-4.2.6"
VERSION="4.2.6"
TMPBUILD="/tmp/build_torque"
CONFIGURE_FLAGS=" --disable-server --with-server-home=/var/spool/torque --with-pam=yes --enable-nvidia-gpus --with-nvml-include=/usr/include --with-nvml-lib=/usr/lib"

##
#
#
cd $SRC
make clean
rm -rf $TMPBUILD
./configure $CONFIGURE_FLAGS
make
mkdir -p $TMPBUILD
make install DESTDIR=$TMPBUILD
mkdir -p $TMPBUILD/etc/init.d
cp contrib/init.d/debian.pbs_mom $TMPBUILD/etc/init.d/pbs_mom
cd $TMPBUILD
fpm --vendor "Adaptive Computing" -m "Instituto de Fisica - UFRGS - Porto Alegre - Brasil" \
  --license "GNU" \
  --url "http://www.if.ufrgs.br" --description "TORQUE Client Resource Manager with NVML support provides control over batch jobs and distributed computing resources." \
  -C $TMPBUILD -p torque-if-client_gpu_"$VERSION"_amd64.deb \
  -s dir -t deb -n torque-if-client_gpu -v $VERSION *

cd -
clear
echo "Pacote DEB disponivel em $TMPBUILD/torque-if-client_gpu_"$VERSION"_amd64.deb !"
