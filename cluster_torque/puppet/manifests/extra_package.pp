class package {
        notify {"Instalando pacotes DEB":}

	package { 'libxml2-dev': 
    	   ensure => installed,
	}

	package { 'libssl-dev': 
    	   ensure => installed,
	}

}
