class workstation::skype {
  package {
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
