class extra_package {
   notify { "Instalando pacotes DEB": }

   file { 'sources.list':
     path    => '/etc/apt/sources.list',
     ensure  => file,
     source  => "puppet:///modules/extra_package/sources.list",
     notify  => Exec["apt-get update"],
   }

   exec { "apt-get update":
     command => "/usr/bin/apt-get update",
     require => File['sources.list'],
   }

   package { 'libxml2-dev': 
     ensure => installed,
   }

   package { 'libssl-dev': 
     ensure => installed,
   }

}
