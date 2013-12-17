#/bin/bash

IMAGE=$1
mkdir /tmp/NODEIMAGE
cpio -idmv < $IMAGE
