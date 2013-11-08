class pxe {

## Suporte o BOOTP + TFTP 
package { 'atftpd':
  ensure => installed,
}

package { 'rlinetd':
  ensure => purged,
}

service { 'atftpd':
  name      => atftpd,
  ensure    => running,
  enable    => true,
}

file { 'atftpd':
  path    => '/etc/default/atftpd',
  ensure  => file,
  source  => "puppet:///modules/pxe/sysconfig_atftpd",
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
