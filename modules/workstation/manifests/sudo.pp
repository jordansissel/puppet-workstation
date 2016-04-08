class workstation::sudo {

  package {
    "sudo": ensure => latest;
  }

  file {
    "/etc/sudoers":
      require => Package["sudo"],
      ensure => present,
      source => "puppet:///modules/workstation/sudoers"
  }
}
