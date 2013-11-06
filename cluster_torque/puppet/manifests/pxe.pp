class pxe {

## Suporte o BOOTP + TFTP 
package { 'atftpd':
  ensure => installed,
}

service { 'atftpd':
  name      => atftpd,
  ensure    => running,
  enable    => true,
  subscribe => File['dhcpd.conf'],
}

file { 'sysconfig_atftpd':
  path    => '/etc/default/atftpd',
  ensure  => file,
  require => Package['atftpd'],
  source  => "/tmp/vagrant-puppet/manifests/files/sysconfig_atftpd",
}

file { "/tftpboot/pxelinux.cfg":
    ensure => "directory",
    owner  => "nobody",
    group  => "nobody",
    mode   => 777,
}

file { 'default':
  path    => '/tftpboot/pxelinux.cfg/default',
  ensure  => file,
  source  => "/tmp/vagrant-puppet/manifests/files/pxelinux.cfg_default",
}

}
