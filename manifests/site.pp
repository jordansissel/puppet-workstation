node default {
  include truth::enforcer
}

File {
  owner => root
}

case $operatingsystem {
  'FreeBSD': {
    File {
      group => wheel
    }
  }
  default: {
    File {
      group => root
    }
  }
}
