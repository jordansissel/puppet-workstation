class workstation {
  package {
    [ "zsh", "screen", "tmux", "vim-enhanced" ]: ensure => latest;
    "wget": ensure => latest;

    # dev tools
    "git": ensure => latest;
    "gcc": ensure => latest;
    "gcc-c++": ensure => latest;
    "ctags": ensure => latest;
    [ "ruby", "ruby-devel" ]: ensure => latest;

    "openssl-devel": ensure => latest;
    "glib-devel": ensure => latest;
    "glib2-devel": ensure => latest;
    "cairo-devel": ensure => latest;
    "xorg-x11-apps": ensure => latest;

    # X11
    "libX11-devel": ensure => latest;
    "libXinerama-devel": ensure => latest;
    "libXtst-devel": ensure => latest;
  }
}
