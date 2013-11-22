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

#file { 'sysconfig_dhcp':
#  path    => '/etc/default/isc-dhcp-server',
#  ensure  => file,
#  require => Package['isc-dhcp-server'],
#  source  => "puppet:///modules/dhcp/sysconfig_dhcp",
#  notify => Service['isc-dhcp-server'],
#}

}
