class tftp {

package { 'tftpd':
  ensure => installed,
}

service { 'isc-dhcp-server':
  name      => isc-dhcp-server,
  ensure    => running,
  enable    => true,
  subscribe => File['dhcpd.conf'],
  require  => Exec['apt-get update'],
}

file { 'sysconfig_dhcp':
  path    => '/etc/default/isc-dhcp-server',
  ensure  => file,
  require => Package['isc-dhcp-server'],
  source  => "/tmp/vagrant-puppet/manifests/files/sysconfig_dhcp",
}

}
