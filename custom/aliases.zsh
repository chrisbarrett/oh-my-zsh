#!/usr/bin/env zsh

###############################################################################
# Git
###############################################################################

alias git=hub

alias gup='git fetch origin -v && gr origin/$(GitCurrentBranch)'
alias grs='git reset'
alias grh='git reset --hard'
alias gb='git branch -v'
alias ga='git add'
alias gau='git add --update'
alias gs='git show'
alias gstat='git status'
alias grm='git rm'
alias gmv='git mv'
alias s='git status --short'
alias gcm='git commit -m'
alias gd='git diff'
alias gco='git checkout'
alias gr='git rebase'
alias gm='git merge --no-ff'
alias gref='git reflog'
alias glp='git log --patch'
alias gls='git log -S'
alias gsp='git smart-pull'
alias gp='git push'
alias gf='git fetch'
alias gc='git clean'
alias gclone='git clone'
alias gbs='git bisect'
alias gcp='git cherry-pick'
alias gl='git log --graph --all --format=format:"%C(bold blue)%h%C(reset) %C(green)- %s %C(reset)%C(bold green)— %an%C(reset) %C(cyan)(%ar)%C(reset) %C(blue)%d%C(reset)" --abbrev-commit --date=relative'

function GitCurrentBranch {
  git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\/heads\///'
}


###############################################################################
# ls & tree
###############################################################################

case $UNAME in
    Darwin)
        alias ls='ls -hF';;
    Linux)
        alias ls='ls -hF --color=auto --human-readable --ignore-backups';;
esac

alias l='ls'
alias la='ls -a'
alias ll='ls -g'


# tree

alias k='tree -L 2'


# package management

case $UNAME in
    Linux)
        alias ag='sudo apt-get'
        alias agi='sudo apt-get install'
        alias agrm='sudo apt-get --purge remove'
        alias agls='dpkg -l'
        ;;
    Darwin)
        alias ag='sudo port'
        alias agi='sudo port install'
        alias agrm='sudo port uninstall --follow-dependencies'
        alias agls='sudo port installed -v'
        ;;
esac


################################################################################
# Emacs
################################################################################

# use emacs -nw, except in Cygwin. Cygwin has problems
# running emacs in-terminal.

case $UNAME in
    Darwin) alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw' ;;
    *)      alias emacs='emacs -nw' ;;
esac

alias e='emacs'
alias ez='emacs ~/.zshrc'
alias ee='emacs ~/.emacs.d/init.el'

################################################################################
# Misc
################################################################################

alias has=hasley
alias skel=skeletor
