#!/bin/bash

##
# Vars
#
APP="$1"
SRC="/root/tmp/$APP-$VERSION"
VERSION="$2"
TMPBUILD="/tmp/build_$1"
CONFIGURE_FLAGS="$3"

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
