class dhcp {

package { 'isc-dhcp-server':
  ensure => installed,
}

service { 'isc-dhcp-server':
  name      => $service_name,
  ensure    => running,
  enable    => true,
  subscribe => File['dhcpd.conf'],
}

file { 'dhcpd.conf':
  path    => '/etc/dhcp/dhcpd.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///manifests/files/dhcpd.conf",
}

file { 'hosts.conf':
  path    => '/etc/dhcp/hosts.conf',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "puppet:///manifests/files/hosts.conf",
}

}
