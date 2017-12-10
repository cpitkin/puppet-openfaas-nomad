# == Class: profile::consul_setup
#
class profile::consul_setup {
  class { 'consul':
    pretty_config        => true,
    pretty_config_indent => 2,
    version              => $versions['consul'],
    config_hash => {
      bootstrap_expect => 1,
      data_dir         => '/opt/consul',
      datacenter       => 'dc1',
      log_level        => 'INFO',
      node_name        => $::hostname,
      server           => true,
      ui               => true,
      advertise_addr   => $::networking['ip'],
      addresses        => {
          http => '0.0.0.0',
          dns => '0.0.0.0',
      }
    }
  }
}
