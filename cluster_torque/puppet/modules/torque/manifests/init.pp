class torque {

package { 'torque-if':
  ensure => installed,
}

service { 'isc-dhcp-server':
  name      => isc-dhcp-server,
  ensure    => running,
  enable    => true,
}

#file { 'hosts.conf':
#  path    => '/etc/dhcp/hosts.conf',
#  ensure  => file,
#  require => Package['isc-dhcp-server'],
#  source  => "puppet:///modules/dhcp/hosts.conf",
#  notify => Service['isc-dhcp-server'],
#}

}
