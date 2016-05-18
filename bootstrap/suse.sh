#!/bin/sh

zypper install rubygem-puppet wget
mkdir ~/.ssh
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/jordansissel/dotfiles/master/.ssh/authorized_keys
systemctl enable sshd
systemctl start sshd
