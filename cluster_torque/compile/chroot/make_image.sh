debootstrap --arch amd64 wheezy /home/RESOURCES/CHROOT http://debian.if.ufrgs.br/debian
LANG=C chroot /home/RESOURCES/CHROOT /bin/bash
apt-get update
apt-get install nfs-common libpam-ldap openssh-server

/tmp/torque-4.2.6# make install DESTDIR=/home/RESOURCES/CHROOT
cp /etc/hosts etc/
fstab

10.1.0.254:/work/home /work/home nfs defaults 0 0 
10.1.0.254:/var/spool /spool nfs defaults 0 0
10.1.0.254:/shared /shared nfs defaults 0 0
10.1.0.254:/usr/local/cuda /usr/local/cuda nfs defaults 0 0


/home/RESOURCES/CHROOT/root/.ssh# cp /root/BKPS-ADA/root/PXE/CHROOT/root/.ssh/authorized_keys .

edita pbs_mom e hostname

