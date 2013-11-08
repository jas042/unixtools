class extra_package {
   notify { "Instalando pacotes DEB": }

   file { 'source.list':
     path    => '/etc/apt/source.list',
     ensure  => file,
     source  => "puppet:///manifests/files/source.list",
   }

   exec { "apt-get update":
     command => "/usr/bin/apt-get update",
   }

   package { 'libxml2-dev': 
     ensure => installed,
   }

   package { 'libssl-dev': 
     ensure => installed,
   }

}
