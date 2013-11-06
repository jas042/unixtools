class pxe {

## Suporte o BOOTP + TFTP 
package { 'atftpd':
  ensure => installed,
}

service { 'rlinetd':
  name      => rlinetd,
  ensure    => stopped,
  enable    => false,
}

service { 'atftpd':
  name      => atftpd,
  ensure    => running,
  enable    => true,
  subscribe => Service['rlinetd'],
}

file { 'atftpd':
  path    => '/etc/default/atftpd',
  ensure  => file,
  source  => "puppet:///manifests/files/sysconfig_atftpd",
}

file { "/tftpboot":
    ensure => "directory",
    owner  => "nobody",
    group  => "nogroup",
    mode   => 777,
}

file { "/tftpboot/pxelinux.cfg":
    ensure => "directory",
    owner  => "nobody",
    group  => "nogroup",
    mode   => 777,
}

file { "/tftpboot/nodes":
    ensure => "directory",
    owner  => "nobody",
    group  => "nogroup",
    mode   => 777,
}

file { 'default':
  path    => '/tftpboot/pxelinux.cfg/default',
  ensure  => file,
  source  => "puppet:///manifests/files/pxelinux.cfg_default",
}

file { 'pxelinux.0':
  path    => '/tftpboot/pxelinux.0',
  ensure  => file,
  source  => "puppet:///manifests/files/pxelinux.0",
}





}
