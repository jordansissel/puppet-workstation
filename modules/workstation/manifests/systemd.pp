class workstation::systemd {
  file {
    "/var/log/journal":
      notify => Exec["systemctl restart systemd-journald"],
      ensure => directory;

  }

  exec {
    "systemctl restart systemd-journald":
      path => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin", "/usr/local/bin", "/usr/local/sbin" ],
      refreshonly => true;
  }
}
