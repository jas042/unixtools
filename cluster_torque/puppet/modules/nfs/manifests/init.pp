class  nfs {

package { 'nfs-kernel-server':
  ensure => installed,
}

service { 'nfs-kernel-server':
  name      => nfs-kernel-server,
  ensure    => running,
  enable    => true,
  subscribe => File['exports'],
}

file { 'exports':
  path    => '/etc/exports',
  ensure  => file,
  require => Package['nfs-kernel-server'],
  source  => "puppet:///modules/nfs/exports",
  notify => Service['nfs-kernel-server'],
}

}
