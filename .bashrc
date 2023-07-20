### Asana
export ASANA_GIT_EMAIL=kennethlu@asana.com
export MAC_CONFIGURE_VERSION=2
export CODEZ=~/sandbox/asana

source $CODEZ/admin/mac.bashrc
source $CODEZ/admin/eng/vagrant_helpers.sh

### Navigation
export CLICOLOR=1
alias ..='cd ..'
alias la='ls -alh'

### Applications
alias config='sublime ~/.bashrc'
alias te='open /Applications/TextEdit.app'

### Actions
alias reload='. ~/.bash_profile && echo "Reloaded bash configuration!"'
alias sweep='find . -name .DS_Store -type f -delete'
alias bzlfix='bzl-fix -diff next-master'

### Git
alias g='git status'
alias gp='git remote prune origin'
alias fm='git fetch origin next-master:next-master'
alias dt='z designtokens generate && prettier'
alias gcob='git checkout -b'
alias merged='git com && git br -D @{-1} && git up && gp'
alias fixup='git add . && git ca'
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
export PS1="\[\033[38;5;213m\]>\[\033[00m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR="sublime -w"
export BASH_SILENCE_DEPRECATION_WARNING=1
