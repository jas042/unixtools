#!/bin/bash

dpkg --purge torque torque-dev torque-initd
rm -rf /usr/src/*
rm -rf /tmp/*
cp /root/torque-4.2.6.tar.gz /usr/src/
