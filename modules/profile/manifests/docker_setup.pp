# == Class: ::profile::docker_setup
#
class profile::docker_setup {
  package { 'unzip':
    ensure => 'installed',
  }

  class { 'docker':
    version => $versions['docker'],
    require => Package['unzip'],
  }
}
