class pxe {

## Suporte o BOOTP + TFTP 
package { 'tftpd-hpa':
  ensure => installed,
}

package { 'rlinetd':
  ensure => purged,
}

service { 'tftpd-hpa':
  name      => tftpd-hpa,
  ensure    => running,
  enable    => true,
}

file { 'tftpd-hpa':
  path    => '/etc/default/tftpd-hpa',
  ensure  => file,
  source  => "puppet:///modules/pxe/sysconfig_tftpd-hpa",
  notify => Service['tftpd-hpa'];
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
  source  => "puppet:///modules/pxe/pxelinux.cfg_default",
}

file { 'pxelinux.0':
  path    => '/tftpboot/pxelinux.0',
  ensure  => file,
  source  => "puppet:///modules/pxe/pxelinux.0",
}


}
