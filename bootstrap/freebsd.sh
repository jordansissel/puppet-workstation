#!/bin/sh

mkdir ~/.ssh
# freebsd 10.3's fetch doesn't trust github's cert. uugh.
fetch --no-verify-peer -o ~/.ssh/authorized_keys https://raw.githubusercontent.com/jordansissel/dotfiles/master/.ssh/authorized_keys

pkg install puppet



