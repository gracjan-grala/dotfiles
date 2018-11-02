# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias password='openssl rand -base64 30'
alias macaddr="openssl rand -hex 6 | sed 's%\(..\)%\1:%g; s%.$%%'"
alias spoofmac='sudo ifconfig en0 ether `macaddr`'
alias launch-items='l ~/Library/LaunchAgents ~/Library/LaunchDaemons /Library/LaunchAgents /Library/LaunchDaemons'
alias startup-items=launch-items
