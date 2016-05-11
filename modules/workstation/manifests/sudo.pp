class workstation::sudo($sudoers="/etc/sudoers") {

  package {
    "sudo": ensure => latest;
  }

  file {
    $sudoers:
      require => Package["sudo"],
      ensure => present,
      source => "puppet:///modules/workstation/sudoers"
  }
}
