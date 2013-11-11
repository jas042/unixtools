class openldap {

package { 'slapd':
  ensure => installed,
}

service { 'slapd':
  name      => slapd,
  ensure    => running,
  enable    => true,
  subscribe => File['slapd.conf'],
}

# Servidor
file { 'slapd.conf':
  path    => '/etc/ldap/slapd.conf',
  ensure  => file,
  require => Package['slapd'],
  notify => Service['slapd'],
  source  => "puppet:///modules/openldap/slapd.conf",
}

file {'slapd.d':
  path => '/etc/ldap/slapd.d',
  ensure => absent,
  force => true,
}

# Autenticacao PAM - LDAP
file { 'nsswitch.conf':
  path    => '/etc/nsswitch.conf',
  ensure  => file,
  source  => "puppet:///modules/openldap/nsswitch.conf",
}

file { 'pam_ldap.secret':
  path    => '/etc/pam_ldap.secret',
  ensure  => file,
  source  => "puppet:///modules/openldap/pam_ldap.secret",
  mode    => 600,
  owner   => "root",
  group   => "root",
}

file { 'pam_ldap.conf':
  path    => '/etc/pam_ldap.conf',
  ensure  => file,
  source  => "puppet:///modules/openldap/pam_ldap.conf",
}

file { 'ldap.conf':
  path    => '/etc/ldap/ldap.conf',
  ensure  => file,
  source  => "puppet:///modules/openldap/ldap.conf",
}

}
