class workstation {

  package {
    [ "zsh", "screen", "tmux", "vim-enhanced" ]: ensure => latest;
    "wget": ensure => latest;

    # dev tools
    "git": ensure => latest;
    "gcc": ensure => latest;
    "gcc-c++": ensure => latest;
    "ctags": ensure => latest;
    [ "ruby", "ruby-devel", "ruby-ri" ]: ensure => latest;

    "openssl-devel": ensure => latest;
    "glib-devel": ensure => latest;
    "glib2-devel": ensure => latest;
    "cairo-devel": ensure => latest;
    "xorg-x11-apps": ensure => latest;
    "strace": ensure => latest;

    # X11
    "libX11-devel": ensure => latest;
    "libXinerama-devel": ensure => latest;
    "libXtst-devel": ensure => latest;

    # skype deps
    "alsa-lib.i686": ensure => latest;
    "glibc.i686": ensure => latest;
    "libgcc.i686": ensure => latest;
    "libstdc++.i686": ensure => latest;
    "libX11.i686": ensure => latest;
    "libXau.i686": ensure => latest;
    "libxcb.i686": ensure => latest;
    "libXext.i686": ensure => latest;
    "libXScrnSaver.i686": ensure => latest;
    "libXv.i686": ensure => latest;
    "qt-x11.i686": ensure => latest;

  }
}
