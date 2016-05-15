class workstation::systemd {
  file {
    "/var/log/journal":
      notify => Exec["/usr/bin/systemctl restart systemd-journald"\,
      ensure => directory;

  }

  exec {
    "/usr/bin/systemctl restart systemd-journald":
      refreshonly => true;
  }
}
