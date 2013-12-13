echo -n "Customomizacoes ..."

mkdir -p ${DESTDIR}/TMPROOT/root/.ssh
mkdir -p ${DESTDIR}/TMPROOT/proc

cp /tmp/tmpnodefiles/passwd ${DESTDIR}/TMPROOT/etc/
cp /tmp/tmpnodefiles/shadow ${DESTDIR}/TMPROOT/etc/
cp /tmp/tmpnodefiles/interfaces ${DESTDIR}/TMPROOT/etc/network/
cp /tmp/tmpnodefiles/hosts ${DESTDIR}/TMPROOT/etc/
cp /tmp/tmpnodefiles/os-release ${DESTDIR}/TMPROOT/etc/
cp /tmp/tmpnodefiles/rc.local ${DESTDIR}/TMPROOT/etc/rc.local
cp /tmp/tmpnodefiles/inittab ${DESTDIR}/TMPROOT/etc/inittab
cp /tmp/tmpnodefiles/fstab_node ${DESTDIR}/TMPROOT/etc/fstab
cp /tmp/tmpnodefiles/ssh_root.pub ${DESTDIR}/TMPROOT/root/.ssh/authorized_keys
cp /tmp/tmpnodefiles/ssh_init ${DESTDIR}/TMPROOT/etc/init.d/ssh
cp /tmp/tmpnodefiles/motd ${DESTDIR}/TMPROOT/etc/motd
cp /tmp/tmpnodefiles/motd ${DESTDIR}/TMPROOT/etc/motd.tail

rm -rf ${DESTDIR}/TMPROOT/boot
rm -rf ${DESTDIR}/TMPROOT/initrd.img
rm -rf ${DESTDIR}/TMPROOT/vmlinuz

echo " feito !"
