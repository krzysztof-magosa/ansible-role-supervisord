# Supervisord Ansible role

[![Build Status](https://travis-ci.org/krzysztof-magosa/ansible-role-supervisord.svg?branch=master)](https://travis-ci.org/krzysztof-magosa/ansible-role-supervisord)

## Description
This role installs and configures supervisord.

## Requirements
* Ansible 2.4.x
* `epel-release` to be installed on target host if it's CentOS based

## Supported systems
* Debian (tested on 9 stretch)
* Ubuntu (tested on 16.04 xenial, 17.04 zesty)
* CentOS (tested on 7)

## Variables
See [defaults](defaults/main.yml).

## License
Licensed under [MIT license](LICENSE.txt).
