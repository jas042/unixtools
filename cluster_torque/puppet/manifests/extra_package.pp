class extra_package {
   notify { "Instalando pacotes DEB": }

   exec { "apt-get update":
     command => "/usr/bin/apt-get update",
#     onlyif => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'",
     logoutput => true,
   }

   package { 'libxml2-dev': 
     ensure => installed,
   }

   package { 'libssl-dev': 
     ensure => installed,
   }

}
