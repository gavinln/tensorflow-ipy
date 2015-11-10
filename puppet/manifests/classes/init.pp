# Commands to run before all others in puppet.
class init {
    group { "puppet":
        ensure => "present",
    }
    case $operatingsystem {
        ubuntu: {
            exec { "apt-update":
                command => "sudo apt-get update",
            }
            Exec["apt-update"] -> Package <| |>
            package { ['git-core']:
                ensure => present,
            }
            exec { 'git config --global url."https://".insteadOf git://' :
                environment => 'HOME=/home/vagrant',
                require => Package['git-core'],
                user => 'vagrant'
            }
            package { 'autojump':
                ensure => present,
                require => Exec['apt-update'];
            }
            package { 'jq':
                ensure => present,
                require => Exec['apt-update'];
            }
            file { '/etc/profile.d/autojump.sh':
                source => '/usr/share/autojump/autojump.sh',
                require => Package['autojump']
            }
        }
    }
}
