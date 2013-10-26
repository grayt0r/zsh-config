function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status --short --branch
  fi
}

function tunnlr {
  ssh -nNt -g -R :12305:0.0.0.0:${@:-'12305'} tunnlr2923@ssh1.tunnlr.com
}

function mysql_start {
  mysql.server start
}

function mysql_stop {
  mysql.server stop
}

#function extract {
#  echo Extracting $1 ...
#  if [ -f $1 ] ; then
#      case $1 in
#          *.tar.bz2)   tar xjf $1  ;;
#          *.tar.gz)    tar xzf $1  ;;
#          *.bz2)       bunzip2 $1  ;;
#          *.rar)       unrar x $1    ;;
#          *.gz)        gunzip $1   ;;
#          *.tar)       tar xf $1   ;;
#          *.tbz2)      tar xjf $1  ;;
#          *.tgz)       tar xzf $1  ;;
#          *.zip)       unzip $1   ;;
#          *.Z)         uncompress $1  ;;
#          *.7z)        7z x $1  ;;
#          *)        echo "'$1' cannot be extracted via extract()" ;;
#      esac
#  else
#      echo "'$1' is not a valid file"
#  fi
#}

#function zsh_recompile {
#  autoload -U zrecompile
#  rm -f ~/.zsh/*.zwc
#  [[ -f ~/.zshrc ]] && zrecompile -p ~/.zshrc
#  [[ -f ~/.zshrc.zwc.old ]] && rm -f ~/.zshrc.zwc.old
#
#  for f in ~/.zsh/**/*.zsh; do
#    [[ -f $f ]] && zrecompile -p $f
#    [[ -f $f.zwc.old ]] && rm -f $f.zwc.old
#  done
#
#  [[ -f ~/.zcompdump ]] && zrecompile -p ~/.zcompdump
#  [[ -f ~/.zcompdump.zwc.old ]] && rm -f ~/.zcompdump.zwc.old
#
#  source ~/.zshrc
#}
