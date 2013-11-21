#!/bin/bash

##
# Vars
#
SRC="/root/tmp/maui-3.3.1"
VERSION="3.3.1"
TMPBUILD="/tmp/build_maui"
CONFIGURE_FLAGS=" "

##
#
#
cd $SRC
rm -rf $TMPBUILD
make clean
./configure $CONFIGURE_FLAGS
make
mkdir -p $TMPBUILD/usr/local/maui 
make install INST_DIR=$TMPBUILD/usr/local/maui
cp maui.cfg.dist $TMPBUILD/usr/local/maui/maui.cfg
cp maui-private.cfg.dist $TMBUILD/usr/local/maui/maui-private.cfg
mkdir -p $TMPBUILD/etc/init.d
cp contrib/service-scripts/suse.maui.d $TMPBUILD/etc/init.d/maui
cd $TMPBUILD
fpm -s dir -t deb -n maui-if -v $VERSION -C $TMPBUILD -p maui-if_"$VERSION"_amd64.deb *
cd -
clear
printf "\x1b[5mPacote DEB disponivel em $TMPBUILD/ !\x1b[25\n"
