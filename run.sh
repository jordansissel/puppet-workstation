#!/bin/sh

dir=$(dirname $0)
puppet apply --verbose --debug --modulepath $dir/modules $dir/manifests/site.pp
