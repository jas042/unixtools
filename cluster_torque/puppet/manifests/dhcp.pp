class dhcp {

package { 'isc-dhcp-server':
  ensure => installed,
}

service { 'isc-dhcp-server':
  name      => isc-dhcp-server,
  ensure    => running,
  enable    => true,
  subscribe => File['dhcpd.conf'],
  require  => Exec['apt-get update'],
}

file { 'dhcpd.conf':
  path    => '/etc/dhcp/dhcpd.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///files/dhcpd.conf",
}

file { 'hosts.conf':
  path    => '/etc/dhcp/hosts.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///files/hosts.conf",
}

}
