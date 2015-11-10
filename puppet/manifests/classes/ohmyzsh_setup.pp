# Install zsh and ohmyzsh
class ohmyzsh_setup {
    case $operatingsystem {
        ubuntu: {
            class { 'ohmyzsh':
            }
            # The following two do not work if git port is blocked
            #ohmyzsh::plugins { 'vagrant':
            #    require => Class['ohmyzsh'],
            #    plugins => 'tmux'
            #}
            #ohmyzsh::install { 'vagrant':
            #    require => Class['ohmyzsh'],
            #    before => Exec['vagrant_bash']
            #}
            #exec { "vagrant_bash":
            #    command => "chsh -s /bin/zsh vagrant"
            #}
        }
    }
}

