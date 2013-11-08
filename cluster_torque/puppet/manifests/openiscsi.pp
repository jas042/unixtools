class openiscsi {

package { 'open-iscsi':
  ensure => installed,
}

service { 'open-iscsi':
  name      => open-iscsi,
  ensure    => running,
  enable    => true,
  subscribe => File['initiatorname.iscsi'],
}

file { 'initiatorname.iscsi':
  path    => '/etc/iscsi/initiatorname.iscsi',
  ensure  => file,
  require => Package['open-iscsi'],
  source  => "puppet:///manifests/files/iscsi_initiatorname.iscsi",
}

iscsiadm --mode discovery --type sendtargets --portal 10.1.0.1:3260
iscsiadm -m node -T iqn.2005-03.com.max -p 192.168.0.4:3260 -l
iscsiadm -m node -T iqn.1984-05.com.dell:powervault.md3200i.6842b2b0006330bf000000004cc72505 -p 10.1.0.1:3260 -l
iscsiadm -m node -T iqn.1984-05.com.dell:powervault.md3200i.6842b2b0006330bf000000004cc72505 -p 10.1.0.1:3260 --op update -n node.startup -v automatic

}
