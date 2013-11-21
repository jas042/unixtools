cd maui-3.3.1
make clean
rm -rf /tmp/build_maui
rm /root/maui-if_3.3.1_amd64.deb
./configure
make
mkdir -p /tmp/build_maui/usr/local/maui 
make install INST_DIR=/tmp/build_maui/usr/local/maui
cp maui.cfg.dist /tmp/build_maui/usr/local/maui/maui.cfg
cp maui-private.cfg.dist /tmp/build_maui/usr/local/maui/maui-private.cfg
mkdir -p /tmp/build_maui/etc/init.d
cp contrib/service-scripts/suse.maui.d /tmp/build_maui/etc/init.d/maui
cd /tmp/build_maui
fpm -s dir -t deb -n maui-if -v 3.3.1 -C /tmp/build_maui -p /root/maui-if_3.3.1_amd64.deb *
cd -
