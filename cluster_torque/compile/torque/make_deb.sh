cd torque-4.2.6
make clean
rm -rf /tmp/build_torque
rm /root/torque-if_4.2.6_amd64.deb
./configure --with-default-server=ada2-mpi --with-server-home=/var/spool/torque --with-rcp=scp --with-pam=yes --enable-nvidia-gpus
make
mkdir -p /tmp/build_torque
make install DESTDIR=/tmp/build_torque
mkdir -p /tmp/build_torque/etc/init.d
cp contrib/init.d/trqauthd /tmp/build_torque/etc/init.d/
cp contrib/init.d/pbs_server /tmp/build_torque/etc/init.d/
cp contrib/init.d/pbs_mom /tmp/build_torque/etc/init.d/
cd /tmp/build_torque
fpm -s dir -t deb -n torque-if -v 4.2.6 -C /tmp/build_torque -p /root/torque-if_4.2.6_amd64.deb *
cd -
