#!/bin/sh

dir=$(dirname $0)
puppet apply --modulepath $dir/modules $dir/manifests/site.pp
