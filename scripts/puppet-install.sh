#!/bin/bash
# Install puppet agent from repo and enable on boot
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum -y install puppet
chkconfig puppet on
exit
