class homedir {
  include workstation
  #include workstation::sudo

  case $operatingsystem {
    'FreeBSD': {
      class { "workstation::sudo": sudoers => "/usr/local/etc/sudoers" }
    }
    default: {
      class { "workstation::sudo": sudoers => "/etc/sudoers" }
    }
  }

  file {
    "/home/jls":
      require => User["jls"],
      notify => Exec["update jls homedir"],
      ensure => directory,
      owner => "jls",
      group => "jls";
  }

  Exec {
    path => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin", "/usr/local/bin", "/usr/local/sbin" ]
  }

  exec {
    "update jls homedir":
      require => [Package["curl"], Class["workstation::sudo"], File["/home/jls"]],
      refreshonly => true,
      command => "curl -Lso - https://github.com/jordansissel/dotfiles/tarball/master | sudo -u jls tar -C /home/jls --strip-components=1 -zxf -"
  }
}
