#!/bin/sh


mkdir ~/.ssh
rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
yum install -y puppet-agent wget
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/jordansissel/dotfiles/master/.ssh/authorized_keys
