# Puppet OpenFaaS Nomad
> Quickly and easily bootstrap a Ubuntu or Debian based node to run OpenFaaS in Nomad
---

## Purpose

This repo is designed to install Docker, Consul, and Nomad to allow for easy setup of OpenFaaS with Nomad. It works great to setup [OpenFaaS-Nomad](https://github.com/hashicorp/faas-nomad).

## Configuration
If you would like to update the version of Docker, Consul, or Nomad you can open the setup.pp file. There is a hash with the versions that will be installed for the respective software. Change these to your liking keeping in mind that they must be absolute version numbers.

## [How-To](https://charliepitkin.com/post/setup-openfaas-nomad/)
