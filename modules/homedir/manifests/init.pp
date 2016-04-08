class homedir {
  include workstation
  include workstation::sudo

  file {
    "/home/jls":
      require => User["jls"],
      notify => Exec["update jls homedir"],
      ensure => directory,
      owner => "jls",
      group => "jls";
  }

  exec {
    "update jls homedir":
      require => [Package["curl"], Package["sudo"], File["/etc/sudoers"], File["/home/jls"]],
      refreshonly => true,
      command => "/usr/bin/curl -Lso - https://github.com/jordansissel/dotfiles/tarball/master | sudo -u jls tar -C /home/jls --strip-components=1 -zxf -"
  }
}
