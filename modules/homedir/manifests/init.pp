class homedir {
  #exec {
    #"update jls homedir":
      #command => "/usr/bin/curl -Lk -o - https://nodeload.github.com/jordansissel/dotfiles/tarball/master | sudo -u jls tar -C /home/jls --strip-components=1 -zxf -"
  #}
}
