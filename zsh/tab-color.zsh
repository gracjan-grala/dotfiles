# Decorate terminal tab color based on currently running app

alias tab-red="tab-color 203 111 111"
alias tab-green="tab-color 4a4"
alias tab-yellow="tab-color \"#e8e9ac\""
alias tab-blue="tab-color 6f8ccc"
alias tab-purple="tab-color a789d4"
alias tab-orange="tab-color fbbc79"
alias tab-white="tab-color fff"
alias tab-grey="tab-color bcbcbc"

set_tab_color() {
  case "$1" in
    (vi|vim|nvim) ) tab-green ;;
    (pry|irb|ruby|bundle|rake|rails|guard|rspec|m\ )* ) tab-red ;;
    (node|npm|nvm)* ) tab-yellow ;;
    vagrant* ) tab-purple ;;
    ssh* ) tab-orange ;;
    vpn ) tab-white ;;
    *   ) tab-grey ;;
  esac
}

precmd() {
  set_tab_color $1
}

preexec() {
  if [ "$1" = "fg" ]
  then
    set_tab_color $(jobs | awk 'END{print $NF}')
  else
    set_tab_color $1
  fi
}
