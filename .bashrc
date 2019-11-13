### Navigation
export CLICOLOR=1
alias ..='cd ..'
alias la='ls -alh'

### Applications
alias config='sublime ~/.bashrc'
alias te='open /Applications/TextEdit.app'

### Actions
alias r='. ~/.bashrc && echo "Reloaded bash configuration!"'
alias sweep='find . -name .DS_Store -type f -delete'

### Git
alias g='git status'
source ~/.git-completion.bash
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
export PS1="\[\033[38;5;213m\]>\[\033[00m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

### Paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin # Defaults + Homebrew

export BASH_SILENCE_DEPRECATION_WARNING=1
