class workstation::xdotool {
  package {
    "xorg-x11-server-Xephyr": ensure => latest;
    "xorg-x11-server-Xvfb": ensure => latest;
    "libX11-devel": ensure => latest;
    "libXinerama-devel": ensure => latest;
    "libXtst-devel": ensure => latest;
  }
}
