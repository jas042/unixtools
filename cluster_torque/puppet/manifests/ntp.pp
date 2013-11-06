class ntp {
package { 'ntp':
  ensure => installed,
}

service { 'ntp':
  name      => ntp,
  ensure    => running,
  enable    => true,
  subscribe => File['ntp.conf'],
}

file { 'ntp.conf':
  path    => '/etc/ntp.conf',
  ensure  => file,
  require => Package['ntp'],
  source  => "/tmp/vagrant-puppet/manifests/files/ntp.conf",
}

}
