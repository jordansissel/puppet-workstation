class workstation::grok {
  package {
    "libevent-devel": ensure => latest;
    "tokyocabinet-devel": ensure => latest;
    "pcre-devel": ensure => latest;
    "bison-devel": ensure => latest;
    "bison-runtime": ensure => latest;
    "bison": ensure => latest;
    "flex": ensure => latest;
    "gperf": ensure => latest;
  }
}
