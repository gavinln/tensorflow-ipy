# install python
class python_setup {
    case $operatingsystem {
        ubuntu: {
            package { "python-dev":
                ensure => installed
            }
            package { "python-pip":
                ensure => installed,
                require => Package['python-dev']
            }
            package { 'httpie':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'tensorflow':
                ensure => installed,
                provider => pip,
                require => Package['python-dev'],
                source => 'https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl'
            }
            package { 'ipython':
                ensure => '3.2.1',
                provider => pip,
                require => Package['python-dev']
            }
            # pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl
        }
    }
}
