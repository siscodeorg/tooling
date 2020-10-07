function gitfetch_cd() {
  old=$(pwd);
  cd $@;
  new=$(pwd);
  gitfetchhook $old $new
}

alias cd="gitfetch_cd"
alias glog="git log --oneline --graph"
alias gloga="git log --oneline --graph --all"
alias gss="git status --short"