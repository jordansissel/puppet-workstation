class user::humans {
  include homedir

  user {
    "jls": ensure => present, groups => ["wheel"];
  }
}