#!/bin/bash

##
# Vars
#
SRC="/root/tmp/torque-4.2.6"
VERSION="4.2.6"
TMPBUILD="/tmp/build_torque"
CONFIGURE_FLAGS="--with-default-server=ada2-mpi --with-server-home=/var/spool/torque --with-rcp=scp --with-pam=yes --enable-nvidia-gpus"

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
fpm -s dir -t deb -n torque-if -v $VERSION -C $TMPBUILD -p torque-if_"$VERSION"_amd64.deb *
cd -
clear
echo "Pacote DEB disponivel em $TMPBUILD !"
