#!/bin/sh

mkdir ~/.ssh

# Remove any cdrom entries from the apt sources.
grep -v 'cdrom' /etc/apt/sources.list > /tmp/x
mv /tmp/x /etc/apt/sources.list

distrib=$(lsb_release -is)
release=$(lsb_release -cs)
release_deb=puppetlabs-release-pc1-$release

apt-get install wget
wget https://apt.puppetlabs.com/$release_deb
dpkg -i $release_deb

case "$distrib" in
  Ubuntu) 
    ;;
  Debian)
    echo "deb http://http.debian.net/debian ${release}-backports main" >> /etc/apt/sources.list
    ;;
esac
    apt-get update

apt-get install -y puppet-agent
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/jordansissel/dotfiles/master/.ssh/authorized_keys
