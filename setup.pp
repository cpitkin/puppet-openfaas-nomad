$versions = {
  consul => '1.0.1',
  nomad => '0.7.0',
  docker => '17.09.0~ce-0~ubuntu'
}

contain '::profile::docker_setup'
contain '::profile::consul_setup'
contain '::profile::nomad_setup'

Class['::profile::docker_setup']
-> Class['::profile::consul_setup']
-> Class['::profile::nomad_setup']
