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
  source  => "/tmp/vagrant-puppet/manifests/files/dhcpd.conf",
}

file { 'hosts.conf':
  path    => '/etc/dhcp/hosts.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "/tmp/vagrant-puppet/manifests/files/hosts.conf",
}

file { 'sysconfig_dhcp':
  path    => '/etc/default/isc-dhcp-server',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "/tmp/vagrant-puppet/manifests/files/sysconfig_dhcp",
}

}