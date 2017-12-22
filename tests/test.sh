#!/bin/bash

# Platform specific actions
if [ -f /etc/debian_version ] ; then
    apt-get update
    apt-get install -y --no-install-recommends python-pip python-setuptools python-wheel
elif [ -f /etc/redhat-release ] ; then
    yum install -y epel-release
    yum install -y python-pip
fi

# Install Ansible
pip install ansible==${ANSIBLE_VER}

# Actual tests
exec ansible-playbook test.yml -i inventory
