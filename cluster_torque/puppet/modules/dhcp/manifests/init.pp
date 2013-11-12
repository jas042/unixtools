class dhcp {

package { 'isc-dhcp-server':
  ensure => installed,
#  require  => Exec['apt-get update'],
}

service { 'isc-dhcp-server':
  name      => isc-dhcp-server,
  ensure    => running,
  enable    => true,
}

file { 'dhcpd.conf':
  path    => '/etc/dhcp/dhcpd.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///modules/dhcp/dhcpd.conf",
  subscribe => File['hosts.conf'],
  notify => Service['isc-dhcp-server'],
}

file { 'hosts.conf':
  path    => '/etc/dhcp/hosts.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///modules/dhcp/hosts.conf",
}

file { 'sysconfig_dhcp':
  path    => '/etc/default/isc-dhcp-server',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///modules/dhcp/sysconfig_dhcp",
}

}
