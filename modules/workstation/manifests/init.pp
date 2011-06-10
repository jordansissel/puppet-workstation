class workstation {
  package {
    [ "zsh", "screen", "tmux", "vim-enhanced" ]: ensure => latest;
    "git": ensure => latest;
    "gcc": ensure => latest;
    "openssl-devel": ensure => latest;
    "ctags": ensure => latest;
  }
}
