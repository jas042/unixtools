#!/bin/bash

##
# Vars
#
SRC="/root/tmp/torque-4.2.6"
VERSION="4.2.6"
TMPBUILD="$TMPBUILD"
CONFIGURE_FLAGS="--with-default-server=ada2-mpi --with-server-home=/var/spool/torque --with-rcp=scp --with-pam=yes --enable-nvidia-gpus"

##
#
#
cd torque-$VERSION
make clean
rm -rf $TMPBUILD
./configure $CONFIGURE_FLAGS
make
mkdir -p $TMPBUILD
make install DESTDIR=$TMPBUILD
mkdir -p $TMPBUILD/etc/init.d
cp contrib/init.d/trqauthd $TMPBUILD/etc/init.d/
cp contrib/init.d/pbs_server $TMPBUILD/etc/init.d/
cp contrib/init.d/pbs_mom $TMPBUILD/etc/init.d/
cd $TMPBUILD
fpm -s dir -t deb -n torque-if -v $VERSION -C $TMPBUILD -p /root/torque-if_"$VERSION"_amd64.deb *
cd -
clear
printf "\x1b[5mPacote DEB disponivel em $TMPBUILD/ !\x1b[25\n"
