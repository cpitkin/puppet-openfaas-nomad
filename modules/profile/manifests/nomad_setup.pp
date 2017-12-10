# == Class: ::profile::nomad_setup
#
class profile::nomad_setup {
  class { 'nomad':
    pretty_config        => true,
    pretty_config_indent => 2,
    version              => $versions['nomad'],
    config_hash          => {
      'region'     => 'home',
      datacenter => 'dc1',
      log_level  => 'INFO',
      bind_addr  => '0.0.0.0',
      data_dir   => '/opt/nomad',
      advertise  => {
        http => $::networking['ip'],
        rpc  => $::networking['ip'],
        serf => $::networking['ip'],
      },
      client     => {
        enabled => true
      },
      server     => {
        enabled          => true,
        bootstrap_expect => 1
      },
      consul => {
        address => "${::networking['ip']}:8500"
      }
    }
  }
}
