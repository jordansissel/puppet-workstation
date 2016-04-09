class user::humans {
  include homedir

  group {
    "wheel": ensure => present;
  }

  user {
    "jls":
      require => Group["wheel"],
      ensure => present,
      groups => ["wheel"],
      shell => "/bin/zsh";
  }
}
