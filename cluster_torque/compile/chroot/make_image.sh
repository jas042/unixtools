multistrap -f files/node.multistrap
mkinitramfs
find . | cpio --quiet --dereference -o -H newc | gzip > /tftpboot/nodes/initrdfull.img
