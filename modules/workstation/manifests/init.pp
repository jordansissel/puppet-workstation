class workstation {
  package {
    [ "zsh", "screen", "tmux"]: ensure => latest;
    "wget": ensure => latest;
    "curl": ensure => latest;

    # dev tools
    "git": ensure => latest;
    "gcc": ensure => latest;
    "libtool": ensure => latest;
    "ctags": ensure => latest;
    "cscope": ensure => latest;
    "tcpdump": ensure => latest;
    "valgrind": ensure => latest;
    "pwgen": ensure => latest;
    "automake": ensure => latest;
    "nmap": ensure => latest;
  }

  case $operatingsystem {
    'Fedora', 'RedHat', 'CentOS', 'Debian', 'Ubuntu': {
      package {
        "strace": ensure => latest;
      }


      if ($operatingsystem == "CentOS" and $operatingsystemrelease =~ /^7\b/)
          or ($operatingsystem == "RedHat" and $operatingsystemrelease =~ /^7\b/)
          or ($operatingsystem == "Fedora" and $operatingsystemrelease =~ /^19\b/)
          or ($operatingsystem == "Debian" and $operatingsystemrelease =~ /^8\b/)
          or ($operatingsystem == "Ubuntu" and $operatingsystemrelease =~ /^16\b/) {
        include workstation::systemd
      }
    }
  }

  case $operatingsystem {
    'Fedora', 'RedHat', 'CentOS': {
      package {
        "gcc-c++": ensure => latest;
        "libtool-ltdl": ensure => latest;
        "libtool-ltdl-devel": ensure => latest;
        [ "lua", "lua-devel" ]: ensure => latest;
        "readline": ensure => latest;
        "readline-devel": ensure => latest;
        "openssl-devel": ensure => latest;
        "vim-enhanced": ensure => latest;
        "java-1.8.0-openjdk-devel": ensure => latest;
      }
    }
    'Debian', 'Ubuntu': {
      package {
        "g++": ensure => latest;
        "libltdl-dev": ensure => latest;
        "liblua5.1-dev": ensure => latest;
        "libreadline6": ensure => latest;
        "libssl-dev": ensure => latest;
        "openjdk-8-jdk": ensure => latest;
      }
    }
    'FreeBSD': {
      # Anything?
    }
  }
}
