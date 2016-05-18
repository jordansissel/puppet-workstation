class user::humans {
  include homedir

  group {
    "wheel": ensure => present;
  }

  case $operatingsystem {
    'FreeBSD': {
      $shell = "/usr/local/bin/zsh"
    }
    default: {
      $shell = "/bin/zsh"
    }
  }

  user {
    "jls":
      require => [Group["wheel"], Package["zsh"]],
      ensure => present,
      groups => ["wheel"],
      shell => $shell;
  }
}
