#!/bin/bash

PE="puppet-enterprise-2018.1.2-el-7-x86_64.tar.gz"

tar -xzvf /vagrant//PuppetServer/$PE -C /usr/local/src/
ln -s /usr/local/src/puppet-enterprise* /usr/local/src/pe

/usr/local/src/pe/puppet-enterprise-installer -c /vagrant/PuppetServer/pe.conf

/opt/puppetlabs/bin/puppet agent -t
/opt/puppetlabs/bin/puppet agent -t

