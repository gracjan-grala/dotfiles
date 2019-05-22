# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glr='git pull --rebase --prune'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'
alias gp='git push origin HEAD --no-verify'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit -n'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch --sort=-committerdate'
alias gbranch='git for-each-ref --sort=-committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) * %(color:red)%(objectname:short)%(color:reset) %(authorname): %(contents:subject) (%(color:green)%(committerdate:relative)%(color:reset))"'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ge='git-edit-new'
alias grh='git reset --hard'
alias gsu='git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`'
alias gaa='git add -A'
alias gf='git fetch'
alias gmine='glog --all --date-order --author=Gracjan'
alias gbclean='git-cleanup-branches'
