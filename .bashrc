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
alias remigrate='rake db:migrate:reset'

### Git
alias g='git status'
source ~/.git-completion.bash
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

### Paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin # Defaults + Homebrew
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
