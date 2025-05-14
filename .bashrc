### Asana
# Redeclared in .profile
# export ASANA_GIT_EMAIL=kennethlu@asana.com
# export MAC_CONFIGURE_VERSION=2
# export CODEZ=~/sandbox/asana

# source $CODEZ/admin/mac.bashrc
# source $CODEZ/admin/eng/vagrant_helpers.sh

### Navigation
export CLICOLOR=1
alias ..='cd ..'
alias la='ls -alh'

### Applications
alias config='sublime ~/.bashrc'
alias gitconfig='sublime ~/.gitconfig'
alias te='open /Applications/TextEdit.app'

### Actions
alias reload='. ~/.bash_profile && echo "Reloaded bash configuration!"'
alias sweep='find . -name .DS_Store -type f -delete'
alias gbf='generate-build-file'
alias bzlfix='generate-build-file --diff next-master'
alias newsand='z sand sync webapp -n --webapp-run-arg=enable_sol_theme_toggler=true'
alias keepsand='z sand sync webapp -k --webapp-run-arg=enable_sol_theme_toggler=true'

### Git
alias g='git status'
alias gp='git remote prune origin'
alias fm='git fetch origin next-master:next-master && gp'
alias dt='z designtokens generate && prettier'
alias gcob='git checkout -b'
alias merged='git com && git br -D @{-1} && git up && gp'
alias fixup='git add . && git ca'
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
export PS1="\[\033[38;5;213m\]>\[\033[00m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR="sublime -w"
export BASH_SILENCE_DEPRECATION_WARNING=1

. "$HOME/.cargo/env"

# uv
export PATH="/Users/kennethlu/.local/bin:$PATH"
