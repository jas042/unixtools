#!/bin/bash

##
# Vars
#
SRC="/root/tmp/torque-4.2.6"
VERSION="4.2.6-1"
TMPBUILD="/tmp/build_torque"
CONFIGURE_FLAGS="--with-server-home=/var/spool/torque --with-pam=yes --enable-nvidia-gpus"

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
cp contrib/init.d/debian.pbs_sched $TMPBUILD/etc/init.d/pbs_sched
cp contrib/init.d/debian.trqauthd $TMPBUILD/etc/init.d/trqauthd
cp contrib/init.d/debian.pbs_server $TMPBUILD/etc/init.d/pbs_server
cp contrib/init.d/debian.pbs_mom $TMPBUILD/etc/init.d/pbs_mom
cd $TMPBUILD

fpm --vendor "Adaptive Computing" -m "Instituto de Fisica - UFRGS - Porto Alegre - Brasil" \
  --license "GNU" \
  --url "http://www.if.ufrgs.br" \
  --description "TORQUE Server and Client Resource Manager provides control over batch jobs and distributed computing resources." \
  -C $TMPBUILD -p torque-if_"$VERSION"_amd64.deb \
  -s dir -t deb -n torque-if -v $VERSION *

cd -
clear
echo "Pacote DEB disponivel em $TMPBUILD/torque-if_"$VERSION"_amd64.deb !"
