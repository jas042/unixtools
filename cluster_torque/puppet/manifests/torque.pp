define replace($file, $line, $ensure = 'present') {
    case $ensure {
        default : { err ( "unknown ensure value ${ensure}" ) }
        present: {
            exec { "/bin/echo '${line}' >> '${file}'":
                unless => "/bin/grep -qFx '${line}' '${file}'"
            }
        }
        absent: {
            exec { "/usr/bin/perl -ni -e 'print unless /^\\Q${line}\\E\$/' '${file}'":
                onlyif => "/bin/grep -qFx '${line}' '${file}'"
            }
        }
    }
}



$extlookup_datadir = "/etc/puppet/manifests/data" 
$extlookup_precedence = [$environment, 'common']
include fpm
include torque::params
include torque::compile
