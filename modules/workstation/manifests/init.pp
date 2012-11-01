class workstation {
  include workstation::xdotool
  include workstation::grok
  # skype sucks on linux anyways, don't install prereqs.
  #include workstation::skype

  package {
    [ "zsh", "screen", "tmux", "vim-enhanced" ]: ensure => latest;
    "wget": ensure => latest;

    # dev tools
    "git": ensure => latest;
    "gcc": ensure => latest;
    "gcc-c++": ensure => latest;
    "libtool-ltdl": ensure => latest;
    "libtool": ensure => latest;
    "libtool-ltdl-devel": ensure => latest;
    "ctags": ensure => latest; "cscope": ensure => latest;
    [ "ruby", "ruby-devel", "ruby-ri" ]: ensure => latest;
    [ "lua", "lua-devel" ]: ensure => latest;

    "readline": ensure => latest;
    "readline-devel": ensure => latest;
    "openssl-devel": ensure => latest;
    "glib-devel": ensure => latest;
    "glib2-devel": ensure => latest;
    "cairo-devel": ensure => latest;
    "xorg-x11-apps": ensure => latest;
    "strace": ensure => latest;
    "libev-devel": ensure => latest;

    "valgrind": ensure => latest;
    "pwgen": ensure => latest;
    "automake": ensure => latest;
    "nmap": ensure => latest;

    "libxml2-devel": ensure => latest;
    "libxslt-devel": ensure => latest;

  }
}
