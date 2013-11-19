
class torque::pkg_install {

	$version = $torque::params::torque_version
	$arch = $architecture ? {
		/x86_64|amd64/ => 'amd64',
		default => 'i386',
	}

	exec { 'install-torque-package':
		path => "/usr/bin",
		user => "root",
		command => "dpkg -i /tmp/torque*-${version}_${arch}.deb",
	        onlyif => "test -e /usr/local/sbin/pbs_mom",
	}

#	exec { "setuid_pbs_iff":
#		path => "/bin",
#		command => "chmod u+s /usr/local/sbin/pbs_iff",
#		require => Exec['install-torque-package'],
#	}

}
