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
            package { "python-zmq":
                ensure => installed,
                require => Package['python-pip']
            }
            package { "jinja2":
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'tornado':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'jsonschema':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'terminado':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'ipython':
                ensure => '3.2.1',
                provider => pip,
                require => Package['python-zmq', 'jinja2', 'tornado',
                    'jsonschema', 'terminado']
            }
            # pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl
        }
    }
}
